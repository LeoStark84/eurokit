-- DIAGONAL DOORS
-- A surprisingly simple thing

local boxes = {
	solid = {
		b = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, -0.4375 },
			{-0.4375, -0.5, -0.4375, -0.375, 0.5, -0.375 },
			{-0.375, -0.5, -0.375, -0.3125, 0.5, -0.3125 },
			{-0.3125, -0.5, -0.3125, -0.25, 0.5, -0.25 },
			{-0.25, -0.5, -0.25, -0.1875, 0.5, -0.1875 },
			{-0.1875, -0.5, -0.1875, -0.125, 0.5, -0.125 },
			{-0.125, -0.5, -0.125, -0.0625, 0.5, -0.0625 },
			{-0.0625, -0.5, -0.0625, 0, 0.5, 0 },
			{0, -0.5, 0, 0.0625, 0.5, 0.0625 },
			{0.0625, -0.5, 0.0625, 0.125, 0.5, 0.125 },
			{0.125, -0.5, 0.125, 0.1875, 0.5, 0.1875 },
			{0.1875, -0.5, 0.1875, 0.25, 0.5, 0.25 },
			{0.25, -0.5, 0.25, 0.3125, 0.5, 0.3125 },
			{0.3125, -0.5, 0.3125, 0.375, 0.5, 0.375 },
			{0.375, -0.5, 0.375, 0.4375, 0.5, 0.4375 },
			{ 0.4375, -0.5, 0.4375, 0.5, 0.5, 0.5 }
		},
		t = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, -0.4375 },
			{-0.4375, -0.5, -0.4375, -0.375, 0.5, -0.375 },
			{-0.375, -0.5, -0.375, -0.3125, 0.5, -0.3125 },
			{-0.3125, -0.5, -0.3125, -0.25, -0.3125, -0.25 },
			{-0.3125, -0.0625, -0.3125, -0.25, 0.0625, -0.25 },
			{-0.3125, 0.3125, -0.3125, -0.25, 0.5, -0.25 },
			{-0.25, -0.5, -0.25, -0.1875, -0.3125, -0.1875 },
			{-0.25, -0.0625, -0.25, -0.1875, 0.0625, -0.1875 },
			{-0.25, 0.3125, -0.25, -0.1875, 0.5, -0.1875 },
			{-0.1875, -0.5, -0.1875, -0.125, -0.3125, -0.125 },
			{-0.1875, -0.0625, -0.1875, -0.125, 0.0625, -0.125 },
			{-0.1875, 0.3125, -0.1875, -0.125, 0.5, -0.125 },
			{-0.125, -0.5, -0.125, -0.0625, -0.3125, -0.0625 },
			{-0.125, -0.0625, -0.125, -0.0625, 0.0625, -0.0625 },
			{-0.125, 0.3125, -0.125, -0.0625, 0.5, -0.0625 },
			{-0.0625, -0.5, -0.0625, 0, 0.5, 0 },
			{0, -0.5, 0, 0.0625, 0.5, 0.0625 },
			{0.3125, -0.5, 0.3125, 0.25, -0.3125, 0.25 },
			{0.3125, -0.0625, 0.3125, 0.25, 0.0625, 0.25 },
			{0.3125, 0.3125, 0.3125, 0.25, 0.5, 0.25 },
			{0.25, -0.5, 0.25, 0.1875, -0.3125, 0.1875 },
			{0.25, -0.0625, 0.25, 0.1875, 0.0625, 0.1875 },
			{0.25, 0.3125, 0.25, 0.1875, 0.5, 0.1875 },
			{0.1875, -0.5, 0.1875, 0.125, -0.3125, 0.125 },
			{0.1875, -0.0625, 0.1875, 0.125, 0.0625, 0.125 },
			{0.1875, 0.3125, 0.1875, 0.125, 0.5, 0.125 },
			{0.125, -0.5, 0.125, 0.0625, -0.3125, 0.0625 },
			{0.125, -0.0625, 0.125, 0.0625, 0.0625, 0.0625 },
			{0.125, 0.3125, 0.125, 0.0625, 0.5, 0.0625 },
			{0.3125, -0.5, 0.3125, 0.375, 0.5, 0.375 },
			{0.375, -0.5, 0.375, 0.4375, 0.5, 0.4375 },
			{ 0.4375, -0.5, 0.4375, 0.5, 0.5, 0.5 }
		},
	},
	glass = {
		b = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, -0.4375 },
			{-0.4375, -0.5, -0.4375, -0.375, 0.5, -0.375 },
			{-0.375, -0.5, -0.375, -0.3125, 0.5, -0.3125 },
			{-0.3125, -0.5, -0.3125, -0.25, 0.5, -0.25 },
			{-0.25, -0.5, -0.25, -0.1875, 0.5, -0.1875 },
			{-0.1875, -0.5, -0.1875, -0.125, 0.5, -0.125 },
			{-0.125, -0.5, -0.125, -0.0625, 0.5, -0.0625 },
			{-0.0625, -0.5, -0.0625, 0, 0.5, 0 },
			{0, -0.5, 0, 0.0625, 0.5, 0.0625 },
			{0.0625, -0.5, 0.0625, 0.125, 0.5, 0.125 },
			{0.125, -0.5, 0.125, 0.1875, 0.5, 0.1875 },
			{0.1875, -0.5, 0.1875, 0.25, 0.5, 0.25 },
			{0.25, -0.5, 0.25, 0.3125, 0.5, 0.3125 },
			{0.3125, -0.5, 0.3125, 0.375, 0.5, 0.375 },
			{0.375, -0.5, 0.375, 0.4375, 0.5, 0.4375 },
			{ 0.4375, -0.5, 0.4375, 0.5, 0.5, 0.5 }
		},
		t = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, -0.4375 },
			{-0.4375, -0.5, -0.4375, -0.375, 0.5, -0.375 },
			{-0.375, -0.5, -0.375, -0.3125, 0.5, -0.3125 },
			{-0.3125, -0.5, -0.3125, -0.25, 0.5, -0.25 },
			{-0.25, -0.5, -0.25, -0.1875, 0.5, -0.1875 },
			{-0.1875, -0.5, -0.1875, -0.125, 0.5, -0.125 },
			{-0.125, -0.5, -0.125, -0.0625, 0.5, -0.0625 },
			{-0.0625, -0.5, -0.0625, 0, 0.5, 0 },
			{0, -0.5, 0, 0.0625, 0.5, 0.0625 },
			{0.0625, -0.5, 0.0625, 0.125, 0.5, 0.125 },
			{0.125, -0.5, 0.125, 0.1875, 0.5, 0.1875 },
			{0.1875, -0.5, 0.1875, 0.25, 0.5, 0.25 },
			{0.25, -0.5, 0.25, 0.3125, 0.5, 0.3125 },
			{0.3125, -0.5, 0.3125, 0.375, 0.5, 0.375 },
			{0.375, -0.5, 0.375, 0.4375, 0.5, 0.4375 },
			{ 0.4375, -0.5, 0.4375, 0.5, 0.5, 0.5 }
		},
	},
}

minetest.register_node("eurokit:diagdoor_t_wood", {
	description = "Wood Door",
	tiles = {
		"eurokit_ddry_wood.png",
		"eurokit_blank.png",
		"eurokit_ddr4t_wood.png",
		"eurokit_ddr4tm_wood.png",
		"eurokit_ddr4tm_wood.png",
		"eurokit_ddr4t_wood.png"
	},
	use_texture_alpha = "clip",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = boxes.solid.t
	},
	paramtype1 = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_wood_defaults(),
	groups = { choppy = 2, door = 1, diagonal = 1, not_in_creative_inventory = 1 },
	drop = "eurokit:diagdoor_b_wood",

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if minetest.get_item_group(minetest.get_node(adn("t", pos)).name, "diagonal") == 1 then
			minetest.swap_node(adn("t", pos), { name = "air" })
		end
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		diagopclo({ x = pos.x, y = pos.y, z = pos.z }, "t")
		return itemstack
	end
})

minetest.register_node("eurokit:diagdoor_b_wood", {
	description = "Wood Door",
	tiles = {
"eurokit_blank.png",
		"eurokit_ddry_wood.png",
		"eurokit_ddr4b_wood.png",
		"eurokit_ddr4bm_wood.png",
		"eurokit_ddr4bm_wood.png",
		"eurokit_ddr4b_wood.png"
	},
	use_texture_alpha = "clip",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = boxes.solid.b
	},
	paramtype1 = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_wood_defaults(),
	groups = { choppy = 2, door = 1, diagonal = 1 },
	inventory_image = "eurokit_ddr_inv_wood.png",
	on_place = function(itemstack, placer, pointed_thing)
		local acpos = pointed_thing.above
		local topos = { x = acpos.x, y = acpos.y+1, z = acpos.z }
		if minetest.get_node(topos).name == "air" then
			local par2 = minetest.dir_to_facedir(minetest.yaw_to_dir(placer:get_look_horizontal()))
			if par2 == 0 then par2 = 2 elseif par2 == 1 then par2 = 3 end
			minetest.swap_node(acpos, { name = "eurokit:diagdoor_b_wood", param2 = par2 })
			minetest.swap_node(topos, { name = "eurokit:diagdoor_t_wood", param2 = par2 })
			if not minetest.is_creative_enabled(placer) then
					itemstack:take_item(1)
			end
		end
		return itemstack
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if minetest.get_item_group(minetest.get_node(adn("b", pos)).name, "diagonal") == 1 then
			minetest.swap_node(adn("b", pos), { name = "air" })
		end
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		diagopclo({ x = pos.x, y = pos.y, z = pos.z }, "b")
		return itemstack
	end
})

minetest.register_craft({
	type = "shaped",
	output = "eurokit:diagdoor_b_wood 3",
	recipe = {
		{ "", "", "doors:door_wood" },
		{ "", "doors:door_wood", "" },
		{ "doors:door_wood", "", "" }
	}
})


minetest.register_node("eurokit:diagdoor_t_steel", {
	description = "Steel Door",
	tiles = {
		"eurokit_ddry_steel.png",
		"eurokit_blank.png",
		"eurokit_ddr4t_steel.png",
		"eurokit_ddr4tm_steel.png",
		"eurokit_ddr4tm_steel.png",
		"eurokit_ddr4t_steel.png"
	},
	use_texture_alpha = "clip",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = boxes.solid.t
	},
	paramtype1 = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_metal_defaults(),
	groups = { cracky = 1, door = 1, diagonal = 1, not_in_creative_inventory = 1 },
	drop = "eurokit:diagdoor_b_steel",

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if minetest.get_item_group(minetest.get_node(adn("t", pos)).name, "diagonal") == 1 then
			minetest.swap_node(adn("t", pos), { name = "air" })
		end
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		diagopclo({ x = pos.x, y = pos.y, z = pos.z }, "t")
		return itemstack
	end
})

minetest.register_node("eurokit:diagdoor_b_steel", {
	description = "Steel Door",
	tiles = {
"eurokit_blank.png",
		"eurokit_ddry_steel.png",
		"eurokit_ddr4b_steel.png",
		"eurokit_ddr4bm_steel.png",
		"eurokit_ddr4bm_steel.png",
		"eurokit_ddr4b_steel.png"
	},
	use_texture_alpha = "clip",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = boxes.solid.b
	},
	paramtype1 = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_metal_defaults(),
	groups = { cracky = 1, door = 1, diagonal = 1 },
	inventory_image = "eurokit_ddr_inv_steel.png",
	on_place = function(itemstack, placer, pointed_thing)
		local acpos = pointed_thing.above
		local topos = { x = acpos.x, y = acpos.y+1, z = acpos.z }
		if minetest.get_node(topos).name == "air" then
			local par2 = minetest.dir_to_facedir(minetest.yaw_to_dir(placer:get_look_horizontal()))
			if par2 == 0 then par2 = 2 elseif par2 == 1 then par2 = 3 end
			minetest.swap_node(acpos, { name = "eurokit:diagdoor_b_steel", param2 = par2 })
			minetest.swap_node(topos, { name = "eurokit:diagdoor_t_steel", param2 = par2 })
			if not minetest.is_creative_enabled(placer) then
					itemstack:take_item(1)
			end
		end
		return itemstack
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if minetest.get_item_group(minetest.get_node(adn("b", pos)).name, "diagonal") == 1 then
			minetest.swap_node(adn("b", pos), { name = "air" })
		end
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		diagopclo({ x = pos.x, y = pos.y, z = pos.z }, "b")
		return itemstack
	end
})

minetest.register_craft({
	type = "shaped",
	output = "eurokit:diagdoor_b_steel 3",
	recipe = {
		{ "", "", "doors:door_steel" },
		{ "", "doors:door_steel", "" },
		{ "doors:door_steel", "", "" }
	}
})


minetest.register_node("eurokit:diagdoor_t_glass", {
	description = "Glass Door",
	tiles = {
		"eurokit_ddry_glass.png",
		"eurokit_blank.png",
		"eurokit_ddr4t_glass.png",
		"eurokit_ddr4tm_glass.png",
		"eurokit_ddr4tm_glass.png",
		"eurokit_ddr4t_glass.png"
	},
	use_texture_alpha = "clip",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = boxes.glass.t
	},
	paramtype1 = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_glass_defaults(),
	groups = { cracky = 3, door = 1, diagonal = 1, not_in_creative_inventory = 1 },
	drop = "eurokit:diagdoor_b_glass",

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if minetest.get_item_group(minetest.get_node(adn("t", pos)).name, "diagonal") == 1 then
			minetest.swap_node(adn("t", pos), { name = "air" })
		end
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		diagopclo({ x = pos.x, y = pos.y, z = pos.z }, "t")
		return itemstack
	end
})

minetest.register_node("eurokit:diagdoor_b_glass", {
	description = "Glass Door",
	tiles = {
"eurokit_blank.png",
		"eurokit_ddry_glass.png",
		"eurokit_ddr4b_glass.png",
		"eurokit_ddr4bm_glass.png",
		"eurokit_ddr4bm_glass.png",
		"eurokit_ddr4b_glass.png"
	},
	use_texture_alpha = "clip",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = boxes.glass.b
	},
	paramtype1 = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_glass_defaults(),
	groups = { cracky = 3, door = 1, diagonal = 1 },
	inventory_image = "eurokit_ddr_inv_glass.png",
	on_place = function(itemstack, placer, pointed_thing)
		local acpos = pointed_thing.above
		local topos = { x = acpos.x, y = acpos.y+1, z = acpos.z }
		if minetest.get_node(topos).name == "air" then
			local par2 = minetest.dir_to_facedir(minetest.yaw_to_dir(placer:get_look_horizontal()))
			if par2 == 0 then par2 = 2 elseif par2 == 1 then par2 = 3 end
			minetest.swap_node(acpos, { name = "eurokit:diagdoor_b_glass", param2 = par2 })
			minetest.swap_node(topos, { name = "eurokit:diagdoor_t_glass", param2 = par2 })
			if not minetest.is_creative_enabled(placer) then
					itemstack:take_item(1)
			end
		end
		return itemstack
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if minetest.get_item_group(minetest.get_node(adn("b", pos)).name, "diagonal") == 1 then
			minetest.swap_node(adn("b", pos), { name = "air" })
		end
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		diagopclo({ x = pos.x, y = pos.y, z = pos.z }, "b")
		return itemstack
	end
})

minetest.register_craft({
	type = "shaped",
	output = "eurokit:diagdoor_b_glass 3",
	recipe = {
		{ "", "", "doors:door_glass" },
		{ "", "doors:door_glass", "" },
		{ "doors:door_glass", "", "" }
	}
})


minetest.register_node("eurokit:diagdoor_t_obsidian_glass", {
	description = "Obsidian Glass Door",
	tiles = {
		"eurokit_ddry_obsidian_glass.png",
		"eurokit_blank.png",
		"eurokit_ddr4t_obsidian_glass.png",
		"eurokit_ddr4tm_obsidian_glass.png",
		"eurokit_ddr4tm_obsidian_glass.png",
		"eurokit_ddr4t_obsidian_glass.png"
	},
	use_texture_alpha = "clip",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = boxes.glass.t
	},
	paramtype1 = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_glass_defaults(),
	groups = { cracky = 1, door = 1, diagonal = 1, not_in_creative_inventory = 1 },
	drop = "eurokit:diagdoor_b_obsidian_glass",

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if minetest.get_item_group(minetest.get_node(adn("t", pos)).name, "diagonal") == 1 then
			minetest.swap_node(adn("t", pos), { name = "air" })
		end
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		diagopclo({ x = pos.x, y = pos.y, z = pos.z }, "t")
		return itemstack
	end
})

minetest.register_node("eurokit:diagdoor_b_obsidian_glass", {
	description = "Obsidian Glass Door",
	tiles = {
"eurokit_blank.png",
		"eurokit_ddry_obsidian_glass.png",
		"eurokit_ddr4b_obsidian_glass.png",
		"eurokit_ddr4bm_obsidian_glass.png",
		"eurokit_ddr4bm_obsidian_glass.png",
		"eurokit_ddr4b_obsidian_glass.png"
	},
	use_texture_alpha = "clip",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = boxes.glass.b
	},
	paramtype1 = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_glass_defaults(),
	groups = { cracky = 1, door = 1, diagonal = 1 },
	inventory_image = "eurokit_ddr_inv_obsidian_glass.png",
	on_place = function(itemstack, placer, pointed_thing)
		local acpos = pointed_thing.above
		local topos = { x = acpos.x, y = acpos.y+1, z = acpos.z }
		if minetest.get_node(topos).name == "air" then
			local par2 = minetest.dir_to_facedir(minetest.yaw_to_dir(placer:get_look_horizontal()))
			if par2 == 0 then par2 = 2 elseif par2 == 1 then par2 = 3 end
			minetest.swap_node(acpos, { name = "eurokit:diagdoor_b_obsidian_glass", param2 = par2 })
			minetest.swap_node(topos, { name = "eurokit:diagdoor_t_obsidian_glass", param2 = par2 })
			if not minetest.is_creative_enabled(placer) then
					itemstack:take_item(1)
			end
		end
		return itemstack
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if minetest.get_item_group(minetest.get_node(adn("b", pos)).name, "diagonal") == 1 then
			minetest.swap_node(adn("b", pos), { name = "air" })
		end
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		diagopclo({ x = pos.x, y = pos.y, z = pos.z }, "b")
		return itemstack
	end
})

minetest.register_craft({
	type = "shaped",
	output = "eurokit:diagdoor_b_obsidian_glass 3",
	recipe = {
		{ "", "", "doors:door_obsidian_glass" },
		{ "", "doors:door_obsidian_glass", "" },
		{ "doors:door_obsidian_glass", "", "" }
	}
})


