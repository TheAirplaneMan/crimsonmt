minetest.register_node("crimsonmt:crimstone_with_mese", {
	description = ("Crimson Mese Ore"),
	tiles = {"crimsonmt_crimstone.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "corruptionmt:crimstone_with_mese",
	wherein        = "corruptionmt:crimstone",
	clust_scarcity = 20 * 20 * 20,
	clust_num_ores = 3,
	clust_size     = 2,
	y_max          = -100,
	y_min          = -210,
})