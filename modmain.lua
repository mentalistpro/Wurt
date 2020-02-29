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

STRINGS.CHARACTER_TITLES.wurt = "The Half-Pint"
STRINGS.CHARACTER_NAMES.wurt = "Wurt"
STRINGS.CHARACTER_DESCRIPTIONS.wurt = "*At home in the swamp \n*Has big plans for Merm-kind \n*Is a vegetarian"
STRINGS.CHARACTER_QUOTES.wurt = "\"Mermfolk known for hos-per-tality, florp.\""
	
	--//TODO: Chinese localisation
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

STRINGS.CHARACTERS.WURT = require "speech_wurt"
STRINGS.NAMES.WURT = "Wurt"

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
--#3 Strings

local _S = _G.STRINGS

_S.CHARACTERS.GENERIC.DESCRIBE.WURT = {"A chunk of ground."}
_S.CHARACTERS.WAGSTAFF.DESCRIBE.WURT = {"A spongy consistency."}
_S.CHARACTERS.WALANI.DESCRIBE.WURT = {"Goopy..."}
_S.CHARACTERS.WARLY.DESCRIBE.WURT = {"It's like an ingredient for the ground."}
_S.CHARACTERS.WATHGRITHR.DESCRIBE.WURT = {"A piece รถf the battlefield."}
_S.CHARACTERS.WAXWELL.DESCRIBE.WURT = {"What is that little creature up to?"}
_S.CHARACTERS.WEBBER.DESCRIBE.WURT = {"Some pretty average earth."}
_S.CHARACTERS.WENDY.DESCRIBE.WURT = {"Some ground."}
_S.CHARACTERS.WHEELER.DESCRIBE.WURT = {"Do I really need to drag this dirt around with me?"}
_S.CHARACTERS.WICKERBOTTOM.DESCRIBE.WURT = {"The ground. You step on it."}
_S.CHARACTERS.WILBA.DESCRIBE.WURT = {"'TIS ALL FWOOSHED"}
_S.CHARACTERS.WILLOW.DESCRIBE.WURT = {"The ground is boring."}
_S.CHARACTERS.WINONA.DESCRIBE.WURT = {"That's a chunk of squishy ground."}
_S.CHARACTERS.WOLFGANG.DESCRIBE.WURT = {"Step stones."}
_S.CHARACTERS.WOODIE.DESCRIBE.WURT = {"Just some ground, eh?"}
_S.CHARACTERS.WOODLEGS.DESCRIBE.WURT = {"Me ain't no ground lubber."}
_S.CHARACTERS.WORMWOOD.DESCRIBE.WURT = {"Squishy"}
_S.CHARACTERS.WORTOX.DESCRIBE.WURT = {"Floor or ceiling, depending on your perspective."}
_S.CHARACTERS.WURT.DESCRIBE.WURT = {"Ground bit."}
_S.CHARACTERS.WX78.DESCRIBE.WURT = {"THE GROUND"}
