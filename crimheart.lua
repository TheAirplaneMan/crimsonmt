minetest.register_node("crimsonmt:crimheart_1", {
	description = "Crimheart",
	drawtype = "plantlike",
	tiles = {"crimsonmt_crimheart.png"},
	inventory_image = "crimsonmt_crimheart.png",
	wield_image = "crimsonmt_crimheart.png",
	paramtype = "light",
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
        drop = "crimsonmt:crimheart_2",
	groups = {cracky = 2},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("crimsonmt:crimheart_2", {
	description = "Cracked Crimheart\nBreaking may cause terrible things to happen",
	drawtype = "plantlike",
	tiles = {"crimsonmt_crimheart_2.png"},
	inventory_image = "crimsonmt_crimheart_2.png",
	wield_image = "crimsonmt_crimheart_2.png",
	paramtype = "light",
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
        drop = "",
	on_destruct = function(pos, oldnode)
		minetest.add_entity(pos, "crimsonmt:crimson_intestoid")
		minetest.add_entity(pos, "crimsonmt:crimson_flyer")
		minetest.add_entity(pos, "crimsonmt:crimson_flyer")
		minetest.add_entity(pos, "crimsonmt:crimson_flyer")
		minetest.add_entity(pos, "crimsonmt:crimson_flyer")

	end,
})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "crimsonmt:crimheart_1",
		wherein        = "crimsonmt:crimstone",
		clust_scarcity = 28 * 28 * 28,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = -0,
		y_min          = -256,
	})