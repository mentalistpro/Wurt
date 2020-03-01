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
--#3 Strings

------------------------------------------------------------------------------------------------
--#1 Character

local _G = GLOBAL
local require = _G.require
local _S = _G.STRINGS

_S.CHARACTER_TITLES.wurt = "The Half-Pint"
_S.CHARACTER_NAMES.wurt = "Wurt"
_S.CHARACTER_DESCRIPTIONS.wurt = "*At home in the swamp \n*Has big plans for Merm-kind \n*Is a vegetarian"
_S.CHARACTER_QUOTES.wurt = "\"Mermfolk known for hos-per-tality, florp.\""
	
	--//TODO: Chinese localisation
	--[[if _G.WURT_MOD_LAN == true then 
		_S.CHARACTER_TITLES.wurt = "The Half-Pint"
		_S.CHARACTER_NAMES.wurt = "wurt"
		_S.CHARACTER_DESCRIPTIONS.wurt = "*At home in the swamp \n*Has big plans for Merm-kind \n*Is a vegetarian"
		_S.CHARACTER_QUOTES.wurt = "Mermfolk known for hos-per-tality, florp."
		_S.CHARACTERS.WURT = require "speech_wurt"
	else
		_S.CHARACTER_TITLES.wurt = "小矮魚人"
		_S.CHARACTER_NAMES.wurt = "沃特"
		_S.CHARACTER_DESCRIPTIONS.wurt = "*可以在沼澤建家。\n*可以創立新魚人王朝。\n*是一個素食主義者。"
		_S.CHARACTER_QUOTES.wurt = "魚人們以好客聞名，浮浪特。"
		_S.CHARACTERS.WURT = require "speech_wurt_zh"
	end]]

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

TUNING.DAPPERNESS_MED = 100/(300*6)
TUNING.DAPPERNESS_MED_LARGE = 100/(300*4.5)

------------------------------------------------------------------------------------------------
--#3 Define new actions.build, inst.mermbuilder, components/deployable so wurt gains 5 sanity when building structure with tag mermstructures

AddComponentPostInit("locomotor",
	function(self)	
		--local UpdateGroundSpeedMultiplier_old = self:UpdateGroundSpeedMultiplier()
		--UpdateGroundSpeedMultiplier_old()
		function self:UpdateGroundSpeedMultiplier()			
			self.groundspeedmultiplier = 1
			local ground = _G.GetWorld()
			local player = _G.GetPlayer()
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
					--print(self.inst, "UpdateGroundSpeedMultiplier check road" )
					if _G.RoadManager and _G.RoadManager:IsOnRoad( x,0,z ) then
						self.groundspeedmultiplier = self.fastmultiplier
					elseif ground ~= nil then
						local tile = ground.Map:GetTileAtPoint(x,0,z)		
						if tile and tile == _G.GROUND.ROAD then
							self.groundspeedmultiplier = self.fastmultiplier
						elseif tile and tile == _G.GROUND.MARSH and player.prefab == "wurt" then
							self.groundspeedmultiplier = self.fastmultiplier					
						end
					end
				end
			end
		end
	end
)