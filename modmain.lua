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

--[[CONTENT]]
--#1 AddModCharacter
--#2 Tuning
--#3 Perks

------------------------------------------------------------------------------------------------
--#1 AddModCharacter

local _G = GLOBAL
local require = _G.require
local _S = _G.STRINGS

_S.CHARACTER_TITLES.wurt = "The Half-Pint"
_S.CHARACTER_NAMES.wurt = "Wurt"
_S.CHARACTER_DESCRIPTIONS.wurt = "*At home in the swamp \n*Has big plans for Merm-kind \n*Is a vegetarian"
_S.CHARACTER_QUOTES.wurt = "\"Mermfolk known for hos-per-tality, florp.\""

table.insert(_G.CHARACTER_GENDERS.FEMALE, "wurt")
_S.CHARACTERS.WURT = require "speech_wurt"
_S.NAMES.WURT = "Wurt"

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

TUNING.WURT_QOL_BUFF = GetModConfigData("qol_buff")

------------------------------------------------------------------------------------------------
--#3 Perks

local GetClock = _G.GetClock
local GetPlayer = _G.GetPlayer
local GetSeasonManager = _G.GetSeasonManager
local GetWorld = _G.GetWorld
local GROUND = _G.GROUND
local IsDLCEnabled = _G.IsDLCEnabled
local RoadManager = _G.RoadManager
local TheSim = _G.TheSim

--//Replace LocoMotor:UpdateGroundSpeedMultiplier()
--I've tried to make changes at prefabs, but it crashes the game. So I change the component instead.
--You can't detect world tile and character at the same time when the game has just started.

AddComponentPostInit("locomotor",
    function(self)  
        function self:UpdateGroundSpeedMultiplier()         
            self.groundspeedmultiplier = 1
            
            local ground = GetWorld()
            local x,y,z = self.inst.Transform:GetWorldPosition()
            local oncreep = ground ~= nil and ground.GroundCreep:OnCreep(self.inst.Transform:GetWorldPosition())
            
            if IsDLCEnabled and IsDLCEnabled(2) then
                local onflood = ground ~= nil and ground.Flooding ~= nil and ground.Flooding:OnFlood(x, y, z)
                local boating = self.inst.components.driver and self.inst.components.driver:GetIsDriving()
                if onflood and not boating then
                    self.groundspeedmultiplier = TUNING.FLOOD_SPEED_MULTIPLIER
                end
            end
            
            if oncreep then
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
                        if tile and ( tile == GROUND.ROAD or tile == GROUND.COBBLEROAD ) then
                            self.groundspeedmultiplier = self.fastmultiplier
                        end
                        
                        --//Wurt's walk speed bonus on marsh turfs
                        if tile and ( tile == GROUND.MARSH or tile == GROUND.TIDALMARSH ) then
                            if self.inst.prefab == "wurt" then
                                self.groundspeedmultiplier = self.fastmultiplier
                            end
                        end
                        --//END
                    
                    end
                end
            end
        end
    end
)

--//Replace Sanity:GetMoistureDelta()

local easing = _G.require("easing")

AddComponentPostInit("sanity",
    function(self)  
        function self:GetMoistureDelta()
            if self.wetnessImmune then 
                return 0 
            else 
                local m = self.inst.components.moisture
                
                --//Wurt suffers from 50% less wetness penalty
                if self.inst.prefab == "wurt" and TUNING.WURT_QOL_BUFF == 1 then
                    return easing.inSine(m:GetMoisture(), 0, TUNING.MOISTURE_SANITY_PENALTY_MAX / 2, m.moistureclamp.max)
                else
                    return easing.inSine(m:GetMoisture(), 0, TUNING.MOISTURE_SANITY_PENALTY_MAX, m.moistureclamp.max)               
                end
                --//END
                
            end 
        end
    end
)

--//Fish preserves longer in Wurt's inventory

local function FishPreserver(inst, holder)
    local holder = GetPlayer()
    if holder.prefab == "wurt" then
        inst.components.perishable:SetPerishTime(TUNING.PERISH_SUPERFAST*4)
    end
end

AddPrefabPostInit("eel", FishPreserver)
AddPrefabPostInit("fish", FishPreserver)
AddPrefabPostInit("tropical_fish", FishPreserver)



