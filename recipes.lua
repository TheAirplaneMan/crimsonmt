minetest.register_craft({
	output = "crimsonmt:bone_block",
	recipe = {
		{"group:bone", "group:bone", "group:bone"},
		{"group:bone", "group:bone", "group:bone"},
		{"group:bone", "group:bone", "group:bone"},
	}
})

minetest.register_craft({
	output = "bonemeal:bone 9",
	recipe = {
		{"crimsonmt:bone_block"},
	}
})
