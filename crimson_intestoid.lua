mobs:register_mob("crimsonmt:crimson_intestoid", {
	type = "monster",
	shoot_offset = 1,
	passive = false,
	attack_type = "dogshoot",
        arrow = "crimsonmt:crimson_spit",
        shoot_interval = 2.5,
	dogshoot_switch = 1,
        dogshoot_count_max = 4,    
        dogshoot_count2_max = 12,
	friendly_fire = false,
	pathfinding = true,
        physical = false,
	reach = 5,
	damage = 5,
	hp_min = 500,
	hp_max = 500,
	armor = 90,
	collisionbox = {-2.000, -0.5000, -2.000, 1.000, 2.500, 1.000},
	visual = "mesh",
	mesh = "crimsonmt_crimson_intestoid.obj",
	textures = {{"crimsonmt_crimson_intestoid.png"}},
	blood_texture = "mobs_blood.png",
	visual_size = {x=12, y=12},
	makes_footstep_sound = true,
--	sounds = {random = "mobs_oerkki"},
	fly = true,
	fly_in = ("air"),
	walk_velocity = 4,
	run_velocity = 7,
	view_range = 64,
	drops = {
		{name = "crimsonmt:digestive_tissue", chance = 1, min = 12, max = 16}
	},
	lava_damage = 0,
})

mobs:register_arrow("crimsonmt:crimson_spit", {
	visual = "sprite",
	visual_size = {x = 1, y = 1},
	textures = {"crimsonmt_crimson_spit.png"},
	collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	velocity = 10,
	tail = 1,
	tail_texture = "crimsonmt_crimson_spit.png",
	tail_size = 10,
	glow = 5,
	expire = 0.1,

	on_activate = function(self, staticdata, dtime_s)
		-- make fireball indestructable
		self.object:set_armor_groups({immortal = 1, fleshy = 100})
	end,

	hit_player = function(self, player)

		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 10}
		}, nil)
	end
})


if minetest.get_modpath("boss_s_hudbar") then
	boss_s_hudbar.add_boss("crimsonmt:crimson_intestoid", "The Crimson Intestoid", 350, "boss_bar_red")
end