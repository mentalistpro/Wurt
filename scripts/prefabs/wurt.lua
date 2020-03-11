local MakePlayerCharacter = require("prefabs/player_common")

local assets =
{
    Asset("ANIM", "anim/player_idles_wurt.zip"),
    Asset("ANIM", "anim/wurt_powerup.zip"),
    Asset("ANIM", "anim/wurt.zip"),
    --Asset("SOUND", "sound/wurt.fsb"),
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

--//CONTENT//
--1. Stats
--2. Tentacle warning

------------------------------------------------------------------------------------------------
--1. Stats

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
--2. Tentacle warning

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

local function OnRespawn(inst)
    if GetWorld().components.mermkingmanager and GetWorld().components.mermkingmanager:HasKing() then
        inst.overrideskinmode = "powerup"
    else
        inst.overrideskinmode = nil
    end
end

local function mermbuilderfn(inst)
	if GetPlayer() then
		inst.components.sanity:DoDelta(5)
	end
	GetPlayer().components.talker:Say(GetString(GetPlayer().prefab, "BUILD_MERMSTRUCTURES"))            
end

local function fishlover(inst, item)
	local item = inst.components.inventoryitem
	if item and item:HasTag("fish") then
		inst.components.sanity:DoDelta(TUNING.DAPPERNESS_MED)
	end
	--GetPlayer().components.talker:Say(GetString(GetPlayer().prefab, "FISH_LOVE"))            		
end

--[[local function fishpresever(inst, item)
	if item and item:HasTag("fish") then
	
	return (item ~= nil and item:HasTag("fish")) and TUNING.WURT_FISH_PRESERVER_RATE or nil
end]]


------------------------------------------------------------------------------------------------

local function fn(inst)
    inst:AddTag("playermerm")			--Wurt is a player, just a tag, no function.
	inst:AddTag("marshwalker")			--Wurt walks on marsh turfs quickly, see IsMarshWalker in this file.
    inst:AddTag("merm")					--Wurt is a merm.
    inst:AddTag("mermbuilder")			--Wurt receives sanity when merm structure is built, different from DST due to Mermhouse Crafting mod, see IsMermBuilder in this file.
    inst:AddTag("mermfluent")			--Wurt is fluent in merm langugage, see Befriendable Merm mod.
    inst:AddTag("mermguard")			--Wurt is a merm guard, see Befriendable Merm mod.
    inst:AddTag("wet")					--Wurt is a wet entity.
    inst:AddTag("stronggrip")			--Wurt is immortal if boat sinks, see HasStrongGrip in this file.

    inst:AddComponent("foodaffinity")
    inst.components.foodaffinity:AddFoodtypeAffinity("VEGGIE", 1.33)
    inst.components.foodaffinity:AddFoodtypeAffinity("ROUGHAGE", 1.33)
    inst.components.foodaffinity:AddPrefabAffinity  ("kelp",          1.33)
    inst.components.foodaffinity:AddPrefabAffinity  ("kelp_cooked",   1.33)
    inst.components.foodaffinity:AddPrefabAffinity  ("kelp_dried",    1.33)
    inst.components.foodaffinity:AddPrefabAffinity  ("durian",        1.6 )
    inst.components.foodaffinity:AddPrefabAffinity  ("durian_cooked", 1.6 )
	
	inst.components.eater:SetVegetarian()
				
    inst:AddComponent("reader")
    inst.peruse_brimstone = peruse_brimstone
    inst.peruse_birds = peruse_birds
    inst.peruse_tentacles = peruse_tentacles
    inst.peruse_sleep = peruse_sleep
    inst.peruse_gardening = peruse_gardening
	
	inst.mermbuilderfn = mermbuilderfn
    inst:ListenForEvent("gotnewitem", fishlover)
    --inst:ListenForEvent("gotnewitem", fishpresever)

    inst:ListenForEvent("onmermkingcreated", function() RoyalUpgrade(inst) end, GetWorld())
    inst:ListenForEvent("onmermkingdestroyed", function() RoyalDowngrade(inst) end, GetWorld())

	inst._active_warnings = {}
	EnableTentacleWarning(inst)
	UpdateTentacleWarnings(inst)

    if GetWorld().components.mermkingmanager and GetWorld().components.mermkingmanager:HasKing() then
        inst:DoTaskInTime(0, function() RoyalUpgrade(inst) end)
    else
        inst:DoTaskInTime(0, function() RoyalDowngrade(inst) end)
    end
		
	--[[local disguisehat_recipe = Recipe(
		"disguisehat", 
		{
		Ingredient("twigs", 2), 
		Ingredient("pigskin", 1), 
		Ingredient("beardhair", 1)
		}, 
		RECIPETABS.DRESS, 
		TECH.NONE, 
		"common")
		disguisehat_recipe.sortkey = 1]]
		
	inst.OnSave = OnSave
    inst.OnPreLoad = OnPreLoad
end

return MakePlayerCharacter("wurt", prefabs, assets, fn, start_inv)