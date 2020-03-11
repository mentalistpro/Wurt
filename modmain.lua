PrefabFiles = 
{
    "wurt",
	"wurt_tentacle_warning"
}

Assets =
{
    Asset("ATLAS", "bigportraits/wurt.xml"),
    Asset("ATLAS", "images/saveslot_portraits/wurt.xml"),
    Asset("ATLAS", "images/selectscreen_portraits/wurt.xml"),
    Asset("ATLAS", "minimap/wurt.xml")
}

AddMinimapAtlas("minimap/wurt.xml")

------------------------------------------------------------------------------------------------

--//CONTENT//
--#1 Character
--#2 Tuning
--#3 Wurt perks

------------------------------------------------------------------------------------------------
--#1 Character

local _G = GLOBAL
local require = _G.require
local _S = _G.STRINGS

_S.CHARACTER_TITLES.wurt = "The Half-Pint"
_S.CHARACTER_NAMES.wurt = "Wurt"
_S.CHARACTER_DESCRIPTIONS.wurt = "*At home in the swamp \n*Has big plans for Merm-kind \n*Is a vegetarian"
_S.CHARACTER_QUOTES.wurt = "\"Mermfolk known for hos-per-tality, florp.\""
_S.CHARACTERS.WURT = require "speech_wurt"
_S.NAMES.WURT = "Wurt"

table.insert(_G.CHARACTER_GENDERS.FEMALE, "wurt")
AddModCharacter("wurt")

------------------------------------------------------------------------------------------------
--#2 Tuning

TUNING.WURT_HEALTH = 150
TUNING.WURT_HUNGER = 200
TUNING.WURT_SANITY = 150

TUNING.WURT_HEALTH_KINGBONUS = 250
TUNING.WURT_HUNGER_KINGBONUS = 250
TUNING.WURT_SANITY_KINGBONUS = 200

TUNING.WURT_FISH_PRESERVER_RATE = 1/4

------------------------------------------------------------------------------------------------
--#3 Wurt perks

local GetClock = _G.GetClock
local GetPlayer = _G.GetPlayer
local GetSeasonManager = _G.GetSeasonManager
local GetWorld = _G.GetWorld
local GROUND = _G.GROUND
local RoadManager = _G.RoadManager
local TheSim = _G.TheSim

--Wurt's movement speed calculation

AddComponentPostInit("locomotor",
	function(self)	
		function self:UpdateGroundSpeedMultiplier()			
			self.groundspeedmultiplier = 1
			local ground = GetWorld()
			local oncreep = ground ~= nil and ground.GroundCreep:OnCreep(self.inst.Transform:GetWorldPosition())
			local x,y,z = self.inst.Transform:GetWorldPosition()
			
			if oncreep then
				-- if this ever needs to happen when self.enablegroundspeedmultiplier is set, need to move the check for self.enablegroundspeedmultiplier above
				if self.triggerscreep and not self.wasoncreep then
					local triggered = ground.GroundCreep:GetTriggeredCreepSpawners(x, y, z)
					for _,v in ipairs(triggered) do
						v:PushEvent("creepactivate", {target = self.inst})
					end
					self.wasoncreep = true
				end
				self.groundspeedmultiplier = self.slowmultiplier
			else
				self.wasoncreep = false
				if self.fasteronroad then
					if RoadManager and RoadManager:IsOnRoad( x,0,z ) then
						self.groundspeedmultiplier = self.fastmultiplier
					elseif ground ~= nil then
						local tile = ground.Map:GetTileAtPoint(x,0,z)		
						if tile and tile == GROUND.ROAD then
							self.groundspeedmultiplier = self.fastmultiplier
						--Wurt has fastmultiplier on marsh ground
						elseif tile and tile == GROUND.MARSH and self.inst.prefab == "wurt" then
							self.groundspeedmultiplier = self.fastmultiplier					
						end
					end
				end
			end
		end
	end
)

--Wurt's sanity calculation

local function isfish(inst)
	inst:AddTag("fish")
	inst:AddComponent("dapperness")
	inst.components.dapperness.dapperness = TUNING.DAPPERNESS_MED
end

AddPrefabPostInit("eel", isfish)
AddPrefabPostInit("fish", isfish)
AddPrefabPostInit("tropical_fish", isfish)

local function isdeadfish(inst)
	inst:AddTag("deadfish")
	inst:AddComponent("dapperness")
	inst.components.dapperness.dapperness = -TUNING.DAPPERNESS_LARGE/1.5
end

AddPrefabPostInit("fish_cooked", isdeadfish)
AddPrefabPostInit("fish_raw_small", isdeadfish)
AddPrefabPostInit("fish_raw_small_cooked", isdeadfish)
AddPrefabPostInit("fishsticks", isdeadfish)
AddPrefabPostInit("fishtacos", isdeadfish)

AddComponentPostInit("sanity",
	function(self)	
		function self:Recalc(dt)
			local total_dapperness = self.dapperness or 0
			local mitigates_rain = false		
			
			for k,v in pairs (self.inst.components.inventory.equipslots) do
				if v.components.dapperness then
					total_dapperness = total_dapperness + v.components.dapperness:GetDapperness(self.inst)
					if v.components.dapperness.mitigates_rain then
						mitigates_rain = true
					end
				end		
			end
			
			local dapper_delta = total_dapperness*TUNING.SANITY_DAPPERNESS
			
			local light_delta = 0
			local lightval = self.inst.LightWatcher:GetLightValue()
			
			local day = GetClock():IsDay() and not GetWorld():IsCave()
			
			if day then 
				light_delta = TUNING.SANITY_DAY_GAIN
			else	
				local highval = TUNING.SANITY_HIGH_LIGHT
				local lowval = TUNING.SANITY_LOW_LIGHT

				if lightval > highval then
					light_delta =  TUNING.SANITY_NIGHT_LIGHT
				elseif lightval < lowval then
					light_delta = TUNING.SANITY_NIGHT_DARK
				else
					light_delta = TUNING.SANITY_NIGHT_MID
				end

				light_delta = light_delta*self.night_drain_mult
			end
			
			local aura_delta = 0
			local x,y,z = self.inst.Transform:GetWorldPosition()
			local ents = TheSim:FindEntities(x,y,z, TUNING.SANITY_EFFECT_RANGE, nil, {"FX", "NOCLICK", "DECOR","INLIMBO"} )
			for k,v in pairs(ents) do 
				if v.components.sanityaura and v ~= self.inst then
					local distsq = self.inst:GetDistanceSqToInst(v)
					local aura_val = v.components.sanityaura:GetAura(self.inst)/math.max(1, distsq)
					if aura_val < 0 then
						aura_val = aura_val * self.neg_aura_mult
					end

					aura_delta = aura_delta + aura_val
				end
			end

			local rain_delta = 0
			if GetSeasonManager() and GetSeasonManager():IsRaining() and not mitigates_rain then
				rain_delta = -TUNING.DAPPERNESS_MED*1.5* GetSeasonManager():GetPrecipitationRate()
			end

			--Wurt suffers 50% less penalty from being wet
			if self.inst.prefab == "wurt" then
				self.rate = (dapper_delta + light_delta + aura_delta + rain_delta)*0.5
			else
				self.rate = (dapper_delta + light_delta + aura_delta + rain_delta)	
			end
			
			if self.custom_rate_fn then
				self.rate = self.rate + self.custom_rate_fn(self.inst)
			end

			self:DoDelta(self.rate*dt, true)
		end
	end
)



