-- LATTICE NODE
-- Lattice is so cool it gets it's own file
minetest.register_node("eurokit:wl_cc", {
	description = "Wooden Lattice",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_wl_cc.png",
		"eurokit_wl_cc.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{ -0.5, -0.5, 0.3125, 0.5, 0.5, 0.5 }}
	},
	use_texture_alpha = "clip",
	sunlight_propagates = true,
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { choppy = 2, lattice = 1, ornamental = 1 },
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		place_in_grid(pos, placer, pointed_thing, "lattice", "eurokit", "wl")
	end
})

minetest.register_node("eurokit:wl_tc", {
	description = "Wooden Lattice Top Center",
	tiles = {
		"eurokit_latop.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_wl_tc.png",
		"eurokit_wl_tc.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{ -0.5, -0.5, 0.3125, 0.5, 0.5, 0.5 }}
	},
	use_texture_alpha = "clip",
	sunlight_propagates = true,
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { choppy = 2, lattice = 1, ornamental = 1 },
	sounds = default.node_sound_wood_defaults(),
	drop = "eurokit:wl_cc",
})

minetest.register_node("eurokit:wl_tr", {
	description = "Wooden Lattice Top Right",
	tiles = {
		"eurokit_latop.png",
		"eurokit_blank.png",
		"eurokit_larig.png",
		"eurokit_blank.png",
		"eurokit_wl_tl.png",
		"eurokit_wl_tr.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{ -0.5, -0.5, 0.3125, 0.5, 0.5, 0.5 }}
	},
	use_texture_alpha = "clip",
	sunlight_propagates = true,
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { choppy = 2, lattice = 1, ornamental = 1 },
	sounds = default.node_sound_wood_defaults(),
	drop = "eurokit:wl_cc",
})

minetest.register_node("eurokit:wl_cr", {
	description = "Wooden Lattice Center Right",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_larig.png",
		"eurokit_blank.png",
		"eurokit_wl_cl.png",
		"eurokit_wl_cr.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{ -0.5, -0.5, 0.3125, 0.5, 0.5, 0.5 }}
	},
	use_texture_alpha = "clip",
	sunlight_propagates = true,
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { choppy = 2, lattice = 1, ornamental = 1 },
	sounds = default.node_sound_wood_defaults(),
	drop = "eurokit:wl_cc",
})

minetest.register_node("eurokit:wl_br", {
	description = "Wooden Lattice Bottom Right",
	tiles = {
		"eurokit_blank.png",
		"eurokit_labot.png",
		"eurokit_larig.png",
		"eurokit_blank.png",
		"eurokit_wl_bl.png",
		"eurokit_wl_br.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{ -0.5, -0.5, 0.3125, 0.5, 0.5, 0.5 }}
	},
	use_texture_alpha = "clip",
	sunlight_propagates = true,
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { choppy = 2, lattice = 1, ornamental = 1 },
	sounds = default.node_sound_wood_defaults(),
	drop = "eurokit:wl_cc",
})

minetest.register_node("eurokit:wl_bc", {
	description = "Wooden Lattice Bottom Center",
	tiles = {
		"eurokit_blank.png",
		"eurokit_labot.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_wl_bc.png",
		"eurokit_wl_bc.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{ -0.5, -0.5, 0.3125, 0.5, 0.5, 0.5 }}
	},
	use_texture_alpha = "clip",
	sunlight_propagates = true,
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { choppy = 2, lattice = 1, ornamental = 1 },
	sounds = default.node_sound_wood_defaults(),
	drop = "eurokit:wl_cc",
})

minetest.register_node("eurokit:wl_bl", {
	description = "Wooden Lattice Bottom Left",
	tiles = {
		"eurokit_blank.png",
		"eurokit_labot.png",
		"eurokit_blank.png",
		"eurokit_lalef.png",
		"eurokit_wl_br.png",
		"eurokit_wl_bl.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{ -0.5, -0.5, 0.3125, 0.5, 0.5, 0.5 }}
	},
	use_texture_alpha = "clip",
	sunlight_propagates = true,
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { choppy = 2, lattice = 1, ornamental = 1 },
	sounds = default.node_sound_wood_defaults(),
	drop = "eurokit:wl_cc",
})

minetest.register_node("eurokit:wl_cl", {
	description = "Wooden Lattice Center Left",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_lalef.png",
		"eurokit_wl_cr.png",
		"eurokit_wl_cl.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{ -0.5, -0.5, 0.3125, 0.5, 0.5, 0.5 }}
	},
	use_texture_alpha = "clip",
	sunlight_propagates = true,
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { choppy = 2, lattice = 1, ornamental = 1 },
	sounds = default.node_sound_wood_defaults(),
	drop = "eurokit:wl_cc",
})

minetest.register_node("eurokit:wl_tl", {
	description = "Wooden Lattice Top Left",
	tiles = {
		"eurokit_latop.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_lalef.png",
		"eurokit_wl_tr.png",
		"eurokit_wl_tl.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{ -0.5, -0.5, 0.3125, 0.5, 0.5, 0.5 }}
	},
	use_texture_alpha = "clip",
	sunlight_propagates = true,
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { choppy = 2, lattice = 1, ornamental = 1 },
	sounds = default.node_sound_wood_defaults(),
	drop = "eurokit:wl_cc",
})

