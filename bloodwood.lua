minetest.register_node("crimsonmt:bloodwood_tree", {
	description = ("Bloodwood Tree"),
	tiles = {"crimsonmt_bloodwood_tree_top.png", "crimsonmt_bloodwood_tree_top.png",
		"crimsonmt_bloodwood_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("crimsonmt:bloodwood_wood", {
	description = ("Bloodwood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"crimsonmt_bloodwood_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "crimsonmt:bloodwood_wood 4",
	recipe = {
		{"crimsonmt:bloodwood_tree"},
	}
})

minetest.register_node("crimsonmt:bloodwood_leaves", {
	description = ("Bloodwood Tree Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"crimsonmt_bloodwood_leaves.png"},
	special_tiles = {"crimsonmt_bloodwood_leaves_simple.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"crimsonmt:bloodwood_sapling"}, rarity = 20},
			{items = {"crimsonmt:bloodwood_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("crimsonmt:bloodwood_sapling", {
	description = ("Bloodwood Tree Sapling"),
	drawtype = "plantlike",
	tiles = {"crimsonmt_bloodwood_sapling.png"},
	inventory_image = "crimsonmt_bloodwood_sapling.png",
	wield_image = "crimsonmt_bloodwood_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"crimsonmt:bloodwood_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 7, z = 4},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

	minetest.register_decoration({
		name = "crimsonmt:bloodwood_1",
		deco_type = "schematic",
		place_on = {"crimsonmt:dirt_with_crimsongrass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.65
		},
		biomes = {"crimson"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("crimsonmt") .. "/schematics/bloodwood_1.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})