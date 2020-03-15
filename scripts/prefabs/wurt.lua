local MakePlayerCharacter = require("prefabs/player_common")

local assets =
{
    Asset("ANIM", "anim/player_idles_wurt.zip"),
    Asset("ANIM", "anim/wurt_powerup.zip"),
    Asset("ANIM", "anim/wurt.zip"),
    Asset("SOUND", "sound/wurt.fsb"),
}

local prefabs =
{
    "wurt_tentacle_warning"
}

local start_inv =
{
    "disguisehat"
}

------------------------------------------------------------------------------------------------

--[[CONTENT]]
--#1 Character Stats
--#2 Eating Stats
--#3 Reading Stats
--#4 Tentacle Warning
--#5 Other perks
--#6 fn()

------------------------------------------------------------------------------------------------
--#1 Character Stats

local function UpdateStats(inst, maxhealth, maxhunger, maxsanity)

    local current_health = inst.health_percent or inst.components.health:GetPercent()
    inst.health_percent = nil

    local current_hunger = inst.hunger_percent or inst.components.hunger:GetPercent()
    inst.hunger_percent = nil

    local current_sanity = inst.sanity_percent or inst.components.sanity:GetPercent()
    inst.sanity_percent = nil

    inst.components.health:SetMaxHealth(maxhealth)
    inst.components.hunger:SetMax(maxhunger)
    inst.components.sanity:SetMax(maxsanity)

    inst.components.health:SetPercent(current_health)
    inst.components.hunger:SetPercent(current_hunger)
    inst.components.sanity:SetPercent(current_sanity)
end

local function RoyalUpgrade(inst, silent)
    UpdateStats(inst, TUNING.WURT_HEALTH_KINGBONUS, TUNING.WURT_HUNGER_KINGBONUS, TUNING.WURT_SANITY_KINGBONUS)

    if not silent and not inst.royal then
        inst.royal = true
        inst.components.talker:Say(GetString(inst, "ANNOUNCE_KINGCREATED"))        
        inst.sg:PushEvent("powerup_wurt")
        inst.SoundEmitter:PlaySound("dontstarve/characters/wurt/transform_to")
    end
end

local function RoyalDowngrade(inst, silent)
    UpdateStats(inst, TUNING.WURT_HEALTH, TUNING.WURT_HUNGER, TUNING.WURT_SANITY)

    if not silent and inst.royal then
        inst.royal = nil
        inst.components.talker:Say(GetString(inst, "ANNOUNCE_KINGDESTROYED"))
        inst.sg:PushEvent("powerdown_wurt")
        inst.SoundEmitter:PlaySound("dontstarve/characters/wurt/transform_from")
    end
end

------------------------------------------------------------------------------------------------
--#2 Eating Stats

local function onPreEat(food)
    if food and food.components.edible then       
        if food.components.edible.foodtype == "SEEDS" or food.components.edible.foodtype == "VEGGIE" then            
            if food.components.edible.healthvalue < 0 then
                food.components.edible.healthvalue = 0 
            end           
            if food.components.edible.sanityvalue < 0 then
                food.components.edible.sanityvalue = 0 
            end       
        end 
    end
end

local function onEat(inst, food)    
    if food and food.components.edible then        
        local food_health = food.components.edible.healthvalue        
        local food_hunger = food.components.edible.hungervalue
        local food_sanity = food.components.edible.sanityvalue
        
        --Wurt receives bonus food stats (need tweak?)
        if food.prefab == "durian" or food.prefab == "durian_cooked" then
            inst.components.health.currenthealth  = inst.components.health.currenthealth + food_health *0.6     
            inst.components.hunger.current = inst.components.hunger.current + food_hunger *0.6  
            inst.components.sanity.current = inst.components.sanity.current + food_sanity *0.6              
        elseif food.components.edible.foodtype == "SEEDS" or food.components.edible.foodtype == "VEGGIE" then
            inst.components.health.currenthealth  = inst.components.health.currenthealth + food_health *0.33        
            inst.components.hunger.current = inst.components.hunger.current + food_hunger *0.33     
            inst.components.sanity.current = inst.components.sanity.current + food_sanity *0.33     
        end
    end
end

------------------------------------------------------------------------------------------------
--#3 Reading Stats

local function peruse_brimstone(inst)
    inst.components.sanity:DoDelta(-TUNING.SANITY_LARGE)
end
local function peruse_birds(inst)
    inst.components.sanity:DoDelta(TUNING.SANITY_HUGE)
end
local function peruse_tentacles(inst)
    inst.components.sanity:DoDelta(TUNING.SANITY_HUGE)
end
local function peruse_sleep(inst)
    inst.components.sanity:DoDelta(TUNING.SANITY_LARGE)
end
local function peruse_gardening(inst)
    inst.components.sanity:DoDelta(-TUNING.SANITY_LARGE)
end

------------------------------------------------------------------------------------------------
--#4 Tentacle Warning

local function VecUtil_Length(p1_x, p1_z)
    return math.sqrt(p1_x * p1_x + p1_z * p1_z)
end

local function ErodeAway(inst, erode_time)
    local time_to_erode = erode_time or 1
    local tick_time = TheSim:GetTickTime()

    if inst.DynamicShadow ~= nil then
        inst.DynamicShadow:Enable(false)
    end

    inst:StartThread(function()
        local ticks = 0
        while ticks * tick_time < time_to_erode do
            local erode_amount = ticks * tick_time / time_to_erode
            inst.AnimState:SetErosionParams(erode_amount, 0.1, 1.0)
            ticks = ticks + 1
            Yield()
        end
        inst:Remove()
    end)
end

local function UpdateTentacleWarnings(inst)
    if not inst.components.inventory ~= nil then
        local old_warnings = {}
        for t, w in pairs(inst._active_warnings) do
            old_warnings[t] = w
        end

        local x, y, z = inst.Transform:GetWorldPosition()
        local warn_dist = 15
        local tentacles = TheSim:FindEntities(x, y, z, warn_dist, {"WORM_DANGER"})
        for i, t in ipairs(tentacles) do
            local p1x, p1y, p1z = inst.Transform:GetWorldPosition()
            local p2x, p2y, p2z = t.Transform:GetWorldPosition()
            local dist = VecUtil_Length(p1x - p2x, p1z - p2z)

            if t.components.health ~= nil and not t.components.health:IsDead() then
                if inst._active_warnings[t] == nil then
                    local fx = SpawnPrefab("wurt_tentacle_warning")
                    fx.entity:SetParent(t.entity)
                    inst._active_warnings[t] = fx
                else
                    old_warnings[t] = nil
                end
            end
        end

        for t, w in pairs(old_warnings) do
            inst._active_warnings[t] = nil
            if w:IsValid() then
                ErodeAway(w, 0.5)
            end
        end
    
    elseif next(inst._active_warnings) ~= nil then
        for t, w in pairs(inst._active_warnings) do
            if w:IsValid() then
                w:Remove()
            end
        end
        inst._active_warnings = {}
    end
end

local function DisableTentacleWarning(inst)
    if inst.tentacle_warning_task ~= nil then
        inst.tentacle_warning_task:Cancel()
        inst.tentacle_warning_task = nil
    end
            
    for t, w in pairs(inst._active_warnings) do
        if w:IsValid() then
            w:Remove()
        end
    end
    inst._active_warnings = {}
end

local function EnableTentacleWarning(inst)
    if inst.tentacle_warning_task == nil then
        inst.tentacle_warning_task = inst:DoPeriodicTask(0.1, UpdateTentacleWarnings)
    end
end

------------------------------------------------------------------------------------------------
--#5 Other perks

local function FishLover(inst)
    local isfish =  inst.components.inventory:Has("fish",1) or 
                    inst.components.inventory:Has("tropical_fish",1) or 
                    inst.components.inventory:Has("eel",1)                  
                    
    local notfish = inst.components.inventory:Has("fish_raw_small",1) or 
                    inst.components.inventory:Has("fish_raw_small_cooked",1) or 
                    inst.components.inventory:Has("fish_cooked",1) or 
                    inst.components.inventory:Has("fishsticks",1) or 
                    inst.components.inventory:Has("fishtacos",1)    

    if isfish then
        inst.components.sanity.dapperness = 100/(30*10*6)
    elseif notfish then
        inst.components.sanity.dapperness = -100/(30*10*6)
    else
        inst.components.sanity.dapperness = 0
    end             
end

local function mermbuilderfn(inst)
    if GetPlayer() then
        inst.components.sanity:DoDelta(5)
    end
    GetPlayer().components.talker:Say(GetString(GetPlayer().prefab, "BUILD_MERMSTRUCTURES"))            
end

------------------------------------------------------------------------------------------------
--#6 fn()

local function OnSave(inst, data)
    data.health_percent = inst.health_percent or inst.components.health:GetPercent()
    data.sanity_percent = inst.sanity_percent or inst.components.sanity:GetPercent()
    data.hunger_percent = inst.hunger_percent or inst.components.hunger:GetPercent()
end

local function OnPreLoad(inst, data)
    if data then
        if data.health_percent then
            inst.health_percent = data.health_percent
        end

        if data.sanity_percent then
            inst.sanity_percent = data.sanity_percent
        end

        if data.hunger_percent then
            inst.hunger_percent = data.hunger_percent
        end
    end
end

local function fn(inst)
    --//Tags
    inst:AddTag("playermerm")   
    inst:AddTag("merm")         --merms are neutral
    inst:AddTag("mermbuilder")  --gain sanity by building merm structures
    inst:AddTag("mermfluent")   --read merm quotes
    inst:AddTag("mermguard")    --befriend with mermguards
    inst:AddTag("wet")          
    inst:AddTag("stronggrip")   
    
    --//Eating
    inst.components.eater.foodprefs = { "VEGGIE","SEEDS" }
    inst.components.eater:SetOnEatFn(onEat)   
    local self = inst.components.eater   
    local old = self.Eat   
    local crockfoods = require("preparedfoods")        
    function self:Eat(food, force) -- rewriting the Eat event        
        if crockfoods[food.prefab] then -- test if food is a crockpot food         
            return old(self, food, force)       
        end        
        onPreEat(food)        
        return old(self, food, force)    
    end
    
    --//Reading
    inst:AddComponent("reader")
    inst.peruse_brimstone = peruse_brimstone
    inst.peruse_birds = peruse_birds
    inst.peruse_tentacles = peruse_tentacles
    inst.peruse_sleep = peruse_sleep
    inst.peruse_gardening = peruse_gardening
    
    --//Resistant to moisture
    inst:AddComponent("moisturelistener")
    inst.components.moisturelistener.wetnessSpeed = 0.25
    inst.components.moisturelistener.wetnessResistance = 0.5

    --//Merm King
    if GetWorld().components.mermkingmanager and GetWorld().components.mermkingmanager:HasKing() then
        inst:DoTaskInTime(0, RoyalUpgrade)
    else
        inst:DoTaskInTime(0, RoyalDowngrade)
    end
    inst:ListenForEvent("onmermkingcreated", RoyalUpgrade, GetWorld())
    inst:ListenForEvent("onmermkingdestroyed", RoyalDowngrade, GetWorld())
    
    --//Hamlet Mask
    if IsDLCEnabled and IsDLCEnabled(3) then
        local disguisehat_recipe = Recipe(
        "disguisehat", 
        {
        Ingredient("twigs", 2), 
        Ingredient("pigskin", 1), 
        Ingredient("beardhair", 1)
        }, 
        RECIPETABS.DRESS, TECH.NONE, "common", "")
        disguisehat_recipe.sortkey = 1
    end
    
    --//Other perks
    inst._active_warnings = {}
    inst:ListenForEvent("locomote", EnableTentacleWarning)
    inst:ListenForEvent("itemget", FishLover)
    inst:ListenForEvent("itemlose", FishLover)
    inst.mermbuilderfn = mermbuilderfn

    inst.OnSave = OnSave
    inst.OnPreLoad = OnPreLoad
end

return MakePlayerCharacter("wurt", prefabs, assets, fn, start_inv)