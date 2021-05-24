minetest.register_ore({
	ore_type = "scatter",
	ore = "eurokit:marble",
	wherein = { "default:stone" },
	clust_scarcity  = 8 * 8 * 8,
	clust_size = 4,
	y_min = -150,
	y_max = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "eurokit:slate",
	wherein = { "default:stone" },
	clust_scarcity  = 8 * 8 * 8,
	clust_size = 4,
	y_min = -250,
	y_max = 0,
})

minetest.register_node("eurokit:slate", {
	description = "Slate",
	tiles = { "eurokit_slate.png" },
	groups = { cracky = 1 },
	sounds= default.node_sound_stone_defaults()
})

minetest.register_craft({
	type = "shapeless",
	output = "eurokit:slate_tiles",
	recipe = { "eurokit:slate" }
})

minetest.register_craftitem("eurokit:slate_tiles", {
	description = "Slate Tiles",
	inventory_image = "eurokit_slate_tiles.png"
})

minetest.register_craft({
	type = "shaped",
	output = "eurokit:slate_roof",
	recipe = {
		{ "eurokit:slate_tiles", "eurokit:slate_tiles", "" },
		{ "eurokit:slate_tiles", "eurokit:slate_tiles", "" },
		{ "", "", "" }
	}
})

