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
    Asset("ATLAS", "minimap/wurt.xml"),
}

AddMinimapAtlas("minimap/wurt.xml")

------------------------------------------------------------------------------------------------

--[[CONTENT]]
--#1 AddModCharacter
--#2 Tuning
--#3 Recipes/Strings
--#4 Perks

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
--#4 Perks

--Fish Preserver
local GetPlayer = _G.GetPlayer

local function FishPreserver(inst, holder)
    local holder = GetPlayer()
    if holder.prefab == "wurt" then
        inst.components.perishable:SetPerishTime(TUNING.PERISH_SUPERFAST*4)
    end
end

AddPrefabPostInit("eel", FishPreserver)
AddPrefabPostInit("fish", FishPreserver)
AddPrefabPostInit("tropical_fish", FishPreserver)

--Pig King does not accept Wurt's tributes unless Wurt is not a merm
    
AddPrefabPostInit("pigking", 
    function(inst)
        inst.components.trader:SetAcceptTest(
            function(inst, item, giver)
                local giver = GetPlayer()
                return item.components.tradable.goldvalue > 0 and not giver:HasTag("merm")
            end
        )
    end
)

