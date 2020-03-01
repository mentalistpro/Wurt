require "prefabutil"

local function test_ground(inst, pt)
	local tiletype = GetGroundTypeAtPosition(pt)
	return tiletype == GROUND.DIRT or inst.data.tile == "webbing"
end

local function ondeploy(inst, pt, deployer)
	if deployer and deployer.SoundEmitter then
		deployer.SoundEmitter:PlaySound("dontstarve/wilson/dig")
	end

	local ground = GetWorld()
	if ground then
		local original_tile_type = ground.Map:GetTileAtPoint(pt.x, pt.y, pt.z)
		local x, y = ground.Map:GetTileCoordsAtPoint(pt.x, pt.y, pt.z)
		if x and y then
			ground.Map:SetTile(x,y, inst.data.tile)
			ground.Map:RebuildLayer( original_tile_type, x, y )
			ground.Map:RebuildLayer( inst.data.tile, x, y )
		end

		local minimap = TheSim:FindFirstEntityWithTag("minimap")
		if minimap then
			minimap.MiniMap:RebuildLayer( original_tile_type, x, y )
			minimap.MiniMap:RebuildLayer( inst.data.tile, x, y )
		end
	end

	inst.components.stackable:Get():Remove()
end

local function make_turf(data)	
	local assets =
	{
		Asset("ANIM", "anim/turf_marsh.zip"),
		Asset("ATLAS", "images/inventoryimages/turf_marsh.xml")
	}
	
	local prefabs =
	{
		"gridplacer",
	}
	
	local function fn(Sim)
		local inst = CreateEntity()
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		
		MakeInventoryPhysics(inst)
	    
		inst.AnimState:SetBank("turf")
		inst.AnimState:SetBuild("turf_marsh")
		inst.AnimState:PlayAnimation("turf_marsh")

		inst:AddTag("groundtile")

	    inst:AddComponent("deployable")
	    inst.components.deployable.ondeploy = ondeploy
	    inst.components.deployable.test = test_ground
	    inst.components.deployable.min_spacing = 0
	    inst.components.deployable.placer = "gridplacer"
    
		inst:AddComponent("fuel")
		inst.components.fuel.fuelvalue = TUNING.MED_FUEL
        MakeMediumBurnable(inst, TUNING.MED_BURNTIME)
		MakeSmallPropagator(inst)
		
		inst:AddComponent("inspectable")
		inst:AddComponent("inventoryitem")
	    
		inst:AddComponent("stackable")
		inst.components.stackable.maxsize = TUNING.STACK_SIZE_LARGEITEM		
		
		inst.data = data
  
		return inst      
	end

	return Prefab("common/objects/turf_marsh", fn, assets, prefabs)
end

local turfs = 
{
	{name="marsh", anim="marsh", tile=GROUND.MARSH},
}

local prefabs= {}
for k,v in pairs(turfs) do
	table.insert(prefabs, make_turf(v))
end

return unpack(prefabs) 
