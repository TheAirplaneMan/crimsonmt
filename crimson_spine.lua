	-- Crimson Spine

minetest.register_decoration({
	name = "crimsonmt:crimson_spine",
	deco_type = "simple",
	place_on = {"crimsonmt:dirt_with_crimsongrass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.1,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.005
	},
	biomes = {"crimson"},
	y_max = 31000,
	y_min = 4,
	decoration = "crimsonmt:crimson_spine",
	height = 5,
	height_max = 9,
})

minetest.register_node("crimsonmt:crimson_spine", {
	description = ("Crimson Spine"),
	drawtype = "plantlike",
	tiles = {"crimsonmt_crimson_spine.png"},
	inventory_image = "crimsonmt_crimson_spine.png",
	wield_image = "crimsonmt_crimson_spine.png",
	paramtype = "light",
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})