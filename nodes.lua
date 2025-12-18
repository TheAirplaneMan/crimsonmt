minetest.register_node("crimsonmt:dirt_with_crimsongrass", {
	description = ("Dirt with Crimson-Veingrass"),
	tiles = {"crimsonmt_grass.png", "default_dirt.png",
		{name = "default_dirt.png^crimsonmt_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, crimson_biome = 1 },
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("crimsonmt:crimstone", {
	description = ("Crimstone"),
	tiles = {"crimsonmt_crimstone.png"},
	groups = {cracky = 1, stone = 1, crimson_biome = 1 },
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("crimsonmt:flesh", {
	description = ("Flesh"),
	tiles = {"crimsonmt_ebonstone_cobble.png"},
	groups = {snappy = 1, choppy = 2},
	sounds = default.node_sound_stone_defaults(),
})