minetest.register_node("crimsonmt:crimheart_1", {
	description = "Crimheart",
	drawtype = "mesh",
	mesh = "crimheart.obj",
	tiles = {"crimsonmt_crimheart.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,

	-- glow
	light_source = 14,

	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},

	collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},

	groups = {cracky = 2},
	sounds = default.node_sound_glass_defaults(),

	-- random rotation on placement
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return itemstack
		end

		local pos = pointed_thing.above
		local facedir = math.random(0, 3)

		minetest.set_node(pos, {
			name = "crimsonmt:crimheart_1",
			param2 = facedir
		})

		if not minetest.is_creative_enabled(placer:get_player_name()) then
			itemstack:take_item()
		end

		return itemstack
	end,
})