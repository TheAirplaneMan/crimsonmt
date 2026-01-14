mobs:register_mob("crimsonmt:cleaver", {
	--docile_by_day = true,
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 8,
	hp_min = 12,
	hp_max = 24,
	armor = 100,
	collisionbox = {-0.7, -0.5, -0.7, 0.7, 0, 0.7},
	visual_size = {x = 9, y = 9},
	visual = "mesh",
	mesh = "crimsonmt_cleaver.obj",
	textures = {{"crimsonmt_cleaver.png"}},
	makes_footstep_sound = false,
--	sounds = {
--		random = "mobs_spider",
--		attack = "mobs_spider"
--	},
	walk_velocity = 1,
	run_velocity = 6,
	jump = true,
	view_range = 15,
	floats = 0,
	drops = {
		{name = "crimsonmt:crimson_bones", chance = 1, min = 0, max = 1}
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	animation = {
		speed_normal = 15, speed_run = 20,
		stand_start = 0, stand_end = 0,
		walk_start = 1, walk_end = 21,
		run_start = 1, run_end = 21,
		punch_start = 25, punch_end = 45
	},
})

mobs:spawn({
	name = "crimsonmt:cleaver",
	nodes = {"crimsonmt:dirt_with_crimsongrass", "crimsonmt:crimstone"},
	active_object_count = 4,
        chance = 3000
})

-- spawn egg

mobs:register_egg("crimsonmt:cleaver", ("Cleaver"), "eyerachnid_egg_texture.png", 1)