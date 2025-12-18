minetest.register_craftitem("crimsonmt:eye_berries", {
	description = "Eye Berries",
	inventory_image = "crimsonmt_eye_berries.png",
	on_use = function(itemstack,user)
		user:set_physics_override({
			speed = 1.5,
			jump = 2.5,
		})
		minetest.after(10, function()
			user:set_physics_override({
				speed = 1,
			        jump = 1,
			})
		end, user)
		local hp = user:get_hp()
		user:set_hp(hp+4)
		local count = itemstack:get_count()
		return "crimsonmt:eye_berries "..count-1
	end,
})