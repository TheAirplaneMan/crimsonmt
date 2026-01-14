-- Load files
local modpath = minetest.get_modpath("crimsonmt")

dofile(modpath.."/crimson_intestoid.lua")
dofile(modpath.."/crimson_steel.lua")
dofile(modpath.."/plants.lua")
dofile(modpath.."/stab.lua")
dofile(modpath.."/crimheart.lua")
dofile(modpath.."/cleaver.lua")
dofile(modpath.."/crimson_spine.lua")
dofile(modpath.."/teethman.lua")
dofile(modpath.."/bloodwood.lua")
dofile(modpath.."/ores.lua")
dofile(modpath.."/nodes.lua")
dofile(modpath.."/biome.lua")
dofile(modpath.."/mobs.lua")
dofile(modpath.."/items.lua")
dofile(modpath.."/recipes.lua")


local CHECK_RADIUS = 6
local FADE_SPEED = 0.4
local STEP = 0.1

local players = {}

-- Math helpers
local function lerp(a, b, t)
	return a + (b - a) * t
end

local function lerp_color(c1, c2, t)
	return {
		r = lerp(c1.r, c2.r, t),
		g = lerp(c1.g, c2.g, t),
		b = lerp(c1.b, c2.b, t),
	}
end

local function rgb_to_hex(c)
	return string.format("#%02X%02X%02X",
		math.floor(c.r),
		math.floor(c.g),
		math.floor(c.b)
	)
end

local CHECK_RADIUS = 6
local FADE_SPEED = 0.5
local STEP = 0.1

-- Default sky color (close to Minetest)
local NORMAL = { r = 140, g = 182, b = 255 }

-- Biome sky colors
local CORRUPTION = { r = 160, g = 80,  b = 200 } -- purple
local CRIMSON    = { r = 200, g = 120, b = 120 } -- pale red (blends better)

local players = {}
local timer = 0

-- Helpers
local function lerp(a, b, t)
	return a + (b - a) * t
end

local function lerp_color(c1, c2, t)
	return {
		r = lerp(c1.r, c2.r, t),
		g = lerp(c1.g, c2.g, t),
		b = lerp(c1.b, c2.b, t),
	}
end

local function rgb_to_hex(c)
	return string.format("#%02X%02X%02X",
		math.floor(c.r),
		math.floor(c.g),
		math.floor(c.b)
	)
end

minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	if timer < STEP then return end
	timer = 0

	for _, player in ipairs(minetest.get_connected_players()) do
		local name = player:get_player_name()
		local pos = vector.round(player:get_pos())

		players[name] = players[name] or {
			factor = 0,
			target = nil,
		}

		-- Detect biome
		local in_corruption = minetest.find_node_near(pos, CHECK_RADIUS, {
			"group:corruption_biome"
		})

		local in_crimson = minetest.find_node_near(pos, CHECK_RADIUS, {
			"group:crimson_biome"
		})

		-- Choose biome (corruption overrides crimson if overlapping)
		local target_color = nil
		if in_corruption then
			target_color = CORRUPTION
		elseif in_crimson then
			target_color = CRIMSON
		end

		local state = players[name]
		local target = target_color and 1 or 0
		local delta = STEP / FADE_SPEED

		-- Reset fade if switching biome type
		if state.target ~= target_color then
			state.factor = 0
			state.target = target_color
		end

		-- Move fade factor
		if state.factor < target then
			state.factor = math.min(1, state.factor + delta)
		elseif state.factor > target then
			state.factor = math.max(0, state.factor - delta)
		end

		-- Apply sky
		if target_color then
			local color = lerp_color(NORMAL, target_color, state.factor)
			player:set_sky({
				base_color = rgb_to_hex(color),
				type = "plain",
				clouds = false,
			})
		else
			player:set_sky({
				type = "regular",
				clouds = true,
			})
		end
	end
end)

minetest.register_on_leaveplayer(function(player)
	players[player:get_player_name()] = nil
end)