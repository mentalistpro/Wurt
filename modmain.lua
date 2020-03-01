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

