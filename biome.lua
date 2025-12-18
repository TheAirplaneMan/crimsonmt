	-- Crimson

	minetest.register_biome({
		name = "crimson",
		node_top = "crimsonmt:dirt_with_crimsongrass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_stone = "crimsonmt:crimstone",
		y_max = 31000,
		y_min = 4,
		heat_point = 53,
		humidity_point = 52,
	})

	minetest.register_biome({
		name = "crimson_ocean",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_stone = "crimsonmt:crimstone",
		node_cave_liquid = "default:water_source",
		y_max = 3,
		y_min = -255,
		heat_point = 53,
		humidity_point = 52,
	})

	minetest.register_biome({
		name = "crimson_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_stone = "crimsonmt:crimstone",
		y_max = -256,
		y_min = -31000,
		heat_point = 53,
		humidity_point = 52,
	})

	minetest.register_decoration({
		name = "crimsonmt:ribes",
		deco_type = "schematic",
		place_on = {"crimsonmt:dirt_with_crimsongrass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 50, y = 50, z = 50},
			seed = 3,
			octaves = 3,
			persist = 0.25
		},
		biomes = {"crimson"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("crimsonmt") .. "/schematics/ribs.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})