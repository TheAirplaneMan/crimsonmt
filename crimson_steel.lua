minetest.register_tool("crimsonmt:crimson_steel_tool_pickaxe", {
	description = ("Crimson-Forged Steel Pickaxe"),
	inventory_image = "crimsonmt_crimson_steel_tool_pickaxe.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.8, [2]=0.85, [3]=0.50}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("crimsonmt:crimson_steel_tool_shovel", {
	description = ("Crimson-Forged Steel Shovel"),
	inventory_image = "crimsonmt_crimson_steel_tool_shovel.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("crimsonmt:crimson_steel_tool_axe", {
	description = ("Crimson-Forged Steel Axe"),
	inventory_image = "crimsonmt_crimson_steel_tool_axe.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.90, [2]=0.80, [3]=0.40}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("crimsonmt:crimson_steel_tool_sword", {
	description = ("Crimson-Forged Steel Sword"),
	inventory_image = "crimsonmt_crimson_steel_tool_sword.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.90, [2]=0.50, [3]=0.10}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

	minetest.register_craft({
		output = "crimsonmt:crimson_steel_tool_pickaxe",
		recipe = {
			{"crimsonmt:crimson_steel_ingot", "crimsonmt:crimson_steel_ingot", "crimsonmt:crimson_steel_ingot"},
			{"", "default:obsidian_shard", ""},
			{"", "default:obsidian_shard", ""}
		}
	})

	minetest.register_craft({
		output = "crimsonmt:crimson_steel_tool_shovel",
		recipe = {
			{"crimsonmt:crimson_steel_ingot"},
			{"default:obsidian_shard"},
			{"default:obsidian_shard"}
		}
	})

	minetest.register_craft({
		output = "crimsonmt:crimson_steel_tool_axe",
		recipe = {
			{"crimsonmt:crimson_steel_ingot", "crimsonmt:crimson_steel_ingot"},
			{"crimsonmt:crimson_steel_ingot", "default:obsidian_shard"},
			{"", "default:obsidian_shard"}
		}
	})

	minetest.register_craft({
		output = "crimsonmt:crimson_steel_tool_sword",
		recipe = {
			{"crimsonmt:crimson_steel_ingot"},
			{"crimsonmt:crimson_steel_ingot"},
			{"default:obsidian_shard"}
		}
	})

minetest.register_craftitem("crimsonmt:crimson_dust", {
	description = ("Crimson Dust"),
	inventory_image = "crimsonmt_crimson_dust.png",
})

minetest.register_craftitem("crimsonmt:digestive_tissue", {
	description = ("Digestive Tissue"),
	inventory_image = "crimsonmt_digestive_tissue.png",
})

minetest.register_craftitem("crimsonmt:crimson_steel_ingot", {
	description = ("Crimson Steel Ingot"),
	inventory_image = "crimsonmt_crimson_steel_ingot.png",
})

minetest.register_node("crimsonmt:crimson_steel_block", {
	description = ("Crimson Steel Block"),
	tiles = {"crimsonmt_crimson_steel_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_metal_defaults(),
})


minetest.register_craft({
	type = "shapeless",
	output = "crimsonmt:crimson_dust 4",
	recipe = {
		"crimsonmt:fungus_night",
		"crimsonmt:fungus_night",
		"crimsonmt:fungus_night",
		"crimsonmt:nervous_tissue",
		"crimsonmt:nervous_tissue",
		"crimsonmt:nervous_tissue",
		"crimsonmt:rotten_eye",
		"crimsonmt:rotten_eye",
		"crimsonmt:rotten_eye",
	}
})

	minetest.register_craft({
		output = "crimsonmt:crimson_steel_block",
		recipe = {
			{"crimsonmt:crimson_steel_ingot", "crimsonmt:crimson_steel_ingot", "crimsonmt:crimson_steel_ingot"},
			{"crimsonmt:crimson_steel_ingot", "crimsonmt:crimson_steel_ingot", "crimsonmt:crimson_steel_ingot"},
			{"crimsonmt:crimson_steel_ingot", "crimsonmt:crimson_steel_ingot", "crimsonmt:crimson_steel_ingot"}		}
	})

	minetest.register_craft({
		output = "crimsonmt:crimson_steel_ingot 9",
		recipe = {
			{"crimsonmt:crimson_steel_block"}		}
	})

minetest.register_craft({
	type = "shapeless",
	output = "crimsonmt:crimson_steel_ingot",
	recipe = {
		"crimsonmt:crimson_dust",
		"crimsonmt:crimson_dust",
		"crimsonmt:crimson_dust",
		"crimsonmt:crimson_dust",
		"crimsonmt:crimson_dust",
		"crimsonmt:crimson_dust",
		"crimsonmt:crimson_dust",
		"crimsonmt:crimson_dust",
		"default:steel_ingot",
	}
})