mobs:register_mob("crimsonmt:teethman", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 5,
	hp_min = 12,
	hp_max = 25,
	armor = 80,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {{"teethman_texture.png"}},
	makes_footstep_sound = true,
--	sounds = {random = "mobs_stonemonster"},
	walk_velocity = 1,
	run_velocity = 4,
	jump_height = 0,
	stepheight = 1.1,
	floats = 0,
	view_range = 10,
	drops = {
		{name = "default:cobble", chance = 1, min = 0, max = 2},
		{name = "default:coal_lump", chance = 3, min = 0, max = 2},
		{name = "default:iron_lump", chance = 5, min = 0, max = 2}
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	animation = {
		speed_normal = 15, speed_run = 15,
		stand_start = 0, stand_end = 14,
		walk_start = 15, walk_end = 38,
		run_start = 40, run_end = 63,
		punch_start = 40, punch_end = 63
	},
})

mobs:spawn({
	name = "crimsonmt:teethman",
	nodes = {"crimsonmt:dirt_with_crimgrass", "crimsonmt:crimstone"},
	active_object_count = 4,
        chance = 3000
})

-- spawn egg

mobs:register_egg("crimsonmt:teethman", ("Teethman"), "teethman_egg_texture.png", 1)