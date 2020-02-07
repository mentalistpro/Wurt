local _G = GLOBAL
local require = _G.require
local STRINGS = _G.STRINGS

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
--#1 Language
--#2 Character
--#3 Tuning
--#4 Modimport

------------------------------------------------------------------------------------------------
--#1 Language

_G.WURT_MOD_LAN = true

local function IsChi()
    for name, data in pairs(_G.KnownModIndex.savedata.known_mods) do
        if data.enabled and data.modinfo then
            if data.modinfo.restart_required and (data.modinfo.name:upper():find("CHINESE") or data.modinfo.name:find("漢化")) then
                return true
            end
        end
    end
    return false
end

if GetModConfigData("language") == "AUTO" and IsChi() or GetModConfigData("language") == "CHI" then
    _G.WURT_MOD_LAN = false  --中文
else
    _G.WURT_MOD_LAN = true   --English
end

_G.setmetatable(env,{__index=function(t,k) return _G.rawget(_G,k) end})

------------------------------------------------------------------------------------------------
--#2 Character

--[[if _G.WURT_MOD_LAN == true then 
	STRINGS.CHARACTER_TITLES.wurt = "The Half-Pint"
	STRINGS.CHARACTER_NAMES.wurt = "wurt"
	STRINGS.CHARACTER_DESCRIPTIONS.wurt = "*At home in the swamp \n*Has big plans for Merm-kind \n*Is a vegetarian"
	STRINGS.CHARACTER_QUOTES.wurt = "Mermfolk known for hos-per-tality, florp."
	STRINGS.CHARACTERS.WURT = require "speech_wurt"
else
	STRINGS.CHARACTER_TITLES.wurt = "小矮魚人"
	STRINGS.CHARACTER_NAMES.wurt = "沃特"
	STRINGS.CHARACTER_DESCRIPTIONS.wurt = "*可以在沼澤建家。\n*可以創立新魚人王朝。\n*是一個素食主義者。"
	STRINGS.CHARACTER_QUOTES.wurt = "魚人們以好客聞名，浮浪特。"
	STRINGS.CHARACTERS.WURT = require "speech_wurt_zh"
end]]

STRINGS.CHARACTER_TITLES.wurt = "The Half-Pint"
STRINGS.CHARACTER_NAMES.wurt = "Wurt"
STRINGS.CHARACTER_DESCRIPTIONS.wurt = "*At home in the swamp \n*Has big plans for Merm-kind \n*Is a vegetarian"
STRINGS.CHARACTER_QUOTES.wurt = "\"Mermfolk known for hos-per-tality, florp.\""

STRINGS.CHARACTERS.WURT = require "speech_wurt"
STRINGS.NAMES.WURT = "Wurt"	--The name of prefab entity in-game; character name refers to STRINGS.CHARACTER_NAMES.wurt

table.insert(_G.CHARACTER_GENDERS.FEMALE, "wurt")
AddModCharacter("wurt")

------------------------------------------------------------------------------------------------
--#3 Tunings

TUNING.WURT_HEALTH = 150
TUNING.WURT_HUNGER = 200
TUNING.WURT_SANITY = 150

TUNING.WURT_HEALTH_KINGBONUS = 250
TUNING.WURT_HUNGER_KINGBONUS = 250
TUNING.WURT_SANITY_KINGBONUS = 200

TUNING.WURT_FISH_PRESERVER_RATE = 1/4

------------------------------------------------------------------------------------------------
--#4 Modimport


