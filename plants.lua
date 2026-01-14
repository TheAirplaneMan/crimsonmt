minetest.register_node("crimsonmt:fungus_vein", {
	description = ("Vein Fungus"),
	tiles = {"crimsonmt_fungus_vein.png"},
	inventory_image = "crimsonmt_fungus_vein.png",
	wield_image = "crimsonmt_fungus_vein.png",
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(-1),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	}
})

	minetest.register_decoration({
		name = "crimsonmt:fungus_vein",
		deco_type = "simple",
		place_on = {"crimsonmt:dirt_with_crimsongrass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"crimson"},
		y_max = 31000,
		y_min = 2,
		decoration = "crimsonmt:fungus_vein",
		param2 = 4,
	})

minetest.register_node("crimsonmt:eye_flowers", {
	description = "Eye Flowers",
	drawtype = "plantlike",
	tiles = {"crimsonmt_eye_flowers.png"},
	inventory_image = "crimsonmt_eye_flowers.png",
	wield_image = "crimsonmt_eye_flowers.png",

	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,

	groups = {snappy = 3, flammable = 2, plant = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),

	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
	},
})

	minetest.register_decoration({
		name = "crimsonmt:eye_flowers",
		deco_type = "simple",
		place_on = {"crimsonmt:dirt_with_crimsongrass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 330,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"crimson"},
		y_max = 31000,
		y_min = 2,
		decoration = "crimsonmt:eye_flowers",
		param2 = 4,
	})

minetest.register_node("crimsonmt:deathspikes", {
	description = "Deathspikes",
	drawtype = "plantlike",
	tiles = {"crimsonmt_deathspikes.png"},
	inventory_image = "crimsonmt_deathspikes.png",
	wield_image = "crimsonmt_deathspikes.png",

	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,

	groups = {snappy = 3, flammable = 2, plant = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),

	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
	},

	-- Damage when touched / stepped on
	damage_per_second = 2,
})

-- Decorations
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"crimsonmt:dirt_with_crimsongrass"},
		sidelen = 4,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 330,
			octaves = 3,
			persist = 0.06
		},
		biomes = {"crimson"},
		y_max = 31000,
		y_min = 1,
		decoration = "crimsonmt:deathspikes",
	})