PrefabFiles = 
{
    "wurt",
    "wurt_tentacle_warning"
}

Assets =
{
    Asset("ATLAS", "bigportraits/wurt.xml"),
    Asset("ATLAS", "images/inventoryimages/turf_marsh.xml"),
    Asset("ATLAS", "images/inventoryimages/turf_tidalmarsh.xml"),
    Asset("ATLAS", "images/saveslot_portraits/wurt.xml"),
    Asset("ATLAS", "images/selectscreen_portraits/wurt.xml"),
    Asset("ATLAS", "minimap/wurt.xml")
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
--#3 Recipes/Strings

--Marsh turf

local Ingredient = _G.Ingredient
local IsDLCEnabled = _G.IsDLCEnabled 
local Recipe = _G.Recipe
local RECIPETABS = _G.RECIPETABS
local RECIPE_GAME_TYPE = _G.RECIPE_GAME_TYPE
local TECH = _G.TECH

local turf_marsh = Recipe(
    "turf_marsh", 
    {
    Ingredient("cutreeds", 1), 
    Ingredient("spoiled_food", 2),
    },
    RECIPETABS.TOWN, TECH.SCIENCE_TWO)
    
    turf_marsh.atlas = "images/inventoryimages/turf_marsh.xml"
    if IsDLCEnabled and ( IsDLCEnabled(1) or IsDLCEnabled(2) or IsDLCEnabled(3) ) then
        turf_marsh.game_type = "common"
    end
    
_S.NAMES.TURF_MARSH = "Marsh Turf"
_S.RECIPE_DESC.TURF_MARSH = "Home is where the marsh is."

_S.CHARACTERS.GENERIC.DESCRIBE.TURF_MARSH = {"A chunk of ground."}
_S.CHARACTERS.WAGSTAFF.DESCRIBE.TURF_MARSH = {"A spongy consistency."}
_S.CHARACTERS.WALANI.DESCRIBE.TURF_MARSH = {"Goopy..."}
_S.CHARACTERS.WARLY.DESCRIBE.TURF_MARSH = {"It's like an ingredient for the ground."}
_S.CHARACTERS.WATHGRITHR.DESCRIBE.TURF_MARSH = {"A piece รถf the battlefield."}
_S.CHARACTERS.WAXWELL.DESCRIBE.TURF_MARSH = {"What is that little creature up to?"}
_S.CHARACTERS.WEBBER.DESCRIBE.TURF_MARSH = {"Some pretty average earth."}
_S.CHARACTERS.WENDY.DESCRIBE.TURF_MARSH = {"Some ground."}
_S.CHARACTERS.WHEELER.DESCRIBE.TURF_MARSH = {"Do I really need to drag this dirt around with me?"}
_S.CHARACTERS.WICKERBOTTOM.DESCRIBE.TURF_MARSH = {"The ground. You step on it."}
_S.CHARACTERS.WILBA.DESCRIBE.TURF_MARSH = {"'TIS ALL FWOOSHED"}
_S.CHARACTERS.WILLOW.DESCRIBE.TURF_MARSH = {"The ground is boring."}
_S.CHARACTERS.WINONA.DESCRIBE.TURF_MARSH = {"That's a chunk of squishy ground."}
_S.CHARACTERS.WOLFGANG.DESCRIBE.TURF_MARSH = {"Step stones."}
_S.CHARACTERS.WOODIE.DESCRIBE.TURF_MARSH = {"Just some ground, eh?"}
_S.CHARACTERS.WOODLEGS.DESCRIBE.TURF_MARSH = {"Me ain't no ground lubber."}
_S.CHARACTERS.WORMWOOD.DESCRIBE.TURF_MARSH = {"Squishy"}
_S.CHARACTERS.WORTOX.DESCRIBE.TURF_MARSH = {"Floor or ceiling, depending on your perspective."}
_S.CHARACTERS.WURT.DESCRIBE.TURF_MARSH = {"Ground bit."}
_S.CHARACTERS.WX78.DESCRIBE.TURF_MARSH = {"THE GROUND"}

--Tidal marsh turf

local turf_tidalmarsh = Recipe(
    "turf_tidalmarsh", 
    {
    Ingredient("cutreeds", 1), 
    Ingredient("spoiled_food", 2),
    },
    RECIPETABS.TOWN, TECH.SCIENCE_TWO)
    
    turf_tidalmarsh.atlas = "images/inventoryimages/turf_tidalmarsh.xml"
    if IsDLCEnabled and ( IsDLCEnabled(1) or IsDLCEnabled(2) or IsDLCEnabled(3) ) then
        turf_tidalmarsh.game_type = {"shipwrecked", "porkland"}
    end
    
_S.NAMES.TURF_TIDALMARSH = "Tidal Marsh Turf"
_S.RECIPE_DESC.TURF_TIDALMARSH = "Sea is where home used to be."

_S.CHARACTERS.GENERIC.DESCRIBE.TURF_TIDALMARSH = {"A chunk of ground."}
_S.CHARACTERS.WAGSTAFF.DESCRIBE.TURF_TIDALMARSH = {"A spongy consistency."}
_S.CHARACTERS.WALANI.DESCRIBE.TURF_TIDALMARSH = {"Goopy..."}
_S.CHARACTERS.WARLY.DESCRIBE.TURF_TIDALMARSH = {"It's like an ingredient for the ground."}
_S.CHARACTERS.WATHGRITHR.DESCRIBE.TURF_TIDALMARSH = {"A piece รถf the battlefield."}
_S.CHARACTERS.WAXWELL.DESCRIBE.TURF_TIDALMARSH = {"What is that little creature up to?"}
_S.CHARACTERS.WEBBER.DESCRIBE.TURF_TIDALMARSH = {"Some pretty average earth."}
_S.CHARACTERS.WENDY.DESCRIBE.TURF_TIDALMARSH = {"Some ground."}
_S.CHARACTERS.WHEELER.DESCRIBE.TURF_TIDALMARSH = {"Do I really need to drag this dirt around with me?"}
_S.CHARACTERS.WICKERBOTTOM.DESCRIBE.TURF_TIDALMARSH = {"The ground. You step on it."}
_S.CHARACTERS.WILBA.DESCRIBE.TURF_TIDALMARSH = {"'TIS ALL FWOOSHED"}
_S.CHARACTERS.WILLOW.DESCRIBE.TURF_TIDALMARSH = {"The ground is boring."}
_S.CHARACTERS.WINONA.DESCRIBE.TURF_TIDALMARSH = {"That's a chunk of squishy ground."}
_S.CHARACTERS.WOLFGANG.DESCRIBE.TURF_TIDALMARSH = {"Step stones."}
_S.CHARACTERS.WOODIE.DESCRIBE.TURF_TIDALMARSH = {"Just some ground, eh?"}
_S.CHARACTERS.WOODLEGS.DESCRIBE.TURF_TIDALMARSH = {"Me ain't no ground lubber."}
_S.CHARACTERS.WORMWOOD.DESCRIBE.TURF_TIDALMARSH = {"Squishy"}
_S.CHARACTERS.WORTOX.DESCRIBE.TURF_TIDALMARSH = {"Floor or ceiling, depending on your perspective."}
_S.CHARACTERS.WURT.DESCRIBE.TURF_TIDALMARSH = {"Ground bit."}
_S.CHARACTERS.WX78.DESCRIBE.TURF_TIDALMARSH = {"THE GROUND"}
    

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


