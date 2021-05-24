-- ULTRAGLASS
 -- Polymorphic glass nodes with ugly textures


minetest.register_node("eurokit:ug_fct", {
	description = "Faceted Glass",
	tiles = {
		"eurokit_ug_fct_center.png",
		"eurokit_ug_fct_center.png",
		"eurokit_ug_fct_center.png",
	},
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
		}
	},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		ultradapt(pos, "ug_fct", minetest.dir_to_facedir(minetest.yaw_to_dir(placer:get_look_horizontal())))
	end
	})

minetest.register_craft({
	type = "shaped",
	output = "eurokit:ug_fct",
	recipe = {
		{ "xpanes:pane_flat", "xpanes:pane_flat", "xpanes:pane_flat" },
		{ "xpanes:pane_flat", "", "xpanes:pane_flat" },
		{ "xpanes:pane_flat", "xpanes:pane_flat", "xpanes:pane_flat" }
	}
})
minetest.register_node("eurokit:ug_fct_stir_tl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.stir.tl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_stir_tr.png",
		"eurokit_ug_fct_stir_tl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_stir_tr", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.stir.tr,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_stir_tl.png",
		"eurokit_ug_fct_stir_tr.png"
	}
	})

minetest.register_node("eurokit:ug_fct_stir_bl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.stir.bl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_stir_br.png",
		"eurokit_ug_fct_stir_bl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_stir_br", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.stir.br,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_stir_bl.png",
		"eurokit_ug_fct_stir_br.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl1_tl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl1.tl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl1_tr.png",
		"eurokit_ug_fct_lsl1_tl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl1_tr", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl1.tr,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl1_tl.png",
		"eurokit_ug_fct_lsl1_tr.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl1_bl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl1.bl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl1_br.png",
		"eurokit_ug_fct_lsl1_bl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl1_br", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl1.br,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl1_bl.png",
		"eurokit_ug_fct_lsl1_br.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl2_tl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl2.tl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl2_tr.png",
		"eurokit_ug_fct_lsl2_tl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl2_tr", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl2.tr,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl2_tl.png",
		"eurokit_ug_fct_lsl2_tr.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl2_bl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl2.bl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl2_br.png",
		"eurokit_ug_fct_lsl2_bl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl2_br", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl2.br,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl2_bl.png",
		"eurokit_ug_fct_lsl2_br.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl3_tl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl3.tl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl3_tr.png",
		"eurokit_ug_fct_lsl3_tl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl3_tr", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl3.tr,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl3_tl.png",
		"eurokit_ug_fct_lsl3_tr.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl3_bl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl3.bl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl3_br.png",
		"eurokit_ug_fct_lsl3_bl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_lsl3_br", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.lsl3.br,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_lsl3_bl.png",
		"eurokit_ug_fct_lsl3_br.png"
	}
	})

minetest.register_node("eurokit:ug_fct_ssar", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.ssar
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_ssar.png",
		"eurokit_ug_fct_ssar.png"
	}
	})

minetest.register_node("eurokit:ug_fct_sarc", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.sarc
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_sarc.png",
		"eurokit_ug_fct_sarc.png"
	}
	})

minetest.register_node("eurokit:ug_fct_scar", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.scar
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_scar.png",
		"eurokit_ug_fct_scar.png"
	}
	})

minetest.register_node("eurokit:ug_fct_win1_r", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.win1.r,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_win1_l.png",
		"eurokit_ug_fct_win1_r.png"
	}
	})

minetest.register_node("eurokit:ug_fct_win1_l", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.win1.l,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_win1_r.png",
		"eurokit_ug_fct_win1_l.png"
	}
	})

minetest.register_node("eurokit:ug_fct_win2_r", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.win2.r,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_win2_l.png",
		"eurokit_ug_fct_win2_r.png"
	}
	})

minetest.register_node("eurokit:ug_fct_win2_l", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.win2.l,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_win2_r.png",
		"eurokit_ug_fct_win2_l.png"
	}
	})

minetest.register_node("eurokit:ug_fct_spar", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.spar
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_spar.png",
		"eurokit_ug_fct_spar.png"
	}
	})

minetest.register_node("eurokit:ug_fct_par1_r", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.par1.r,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_par1_l.png",
		"eurokit_ug_fct_par1_r.png"
	}
	})

minetest.register_node("eurokit:ug_fct_par1_l", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.par1.l,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_par1_r.png",
		"eurokit_ug_fct_par1_l.png"
	}
	})

minetest.register_node("eurokit:ug_fct_par2_r", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.par2.r,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_par2_l.png",
		"eurokit_ug_fct_par2_r.png"
	}
	})

minetest.register_node("eurokit:ug_fct_par2_l", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.par2.l,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_par2_r.png",
		"eurokit_ug_fct_par2_l.png"
	}
	})

minetest.register_node("eurokit:ug_fct_slpe_tl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.slpe.tl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_slpe_tr.png",
		"eurokit_ug_fct_slpe_tl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_slpe_tr", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.slpe.tr,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_slpe_tl.png",
		"eurokit_ug_fct_slpe_tr.png"
	}
	})

minetest.register_node("eurokit:ug_fct_slpe_bl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.slpe.bl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_slpe_br.png",
		"eurokit_ug_fct_slpe_bl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_slpe_br", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.slpe.br,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_slpe_bl.png",
		"eurokit_ug_fct_slpe_br.png"
	}
	})

minetest.register_node("eurokit:ug_fct_carc_tl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.carc.tl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_carc_tr.png",
		"eurokit_ug_fct_carc_tl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_carc_tr", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.carc.tr,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_carc_tl.png",
		"eurokit_ug_fct_carc_tr.png"
	}
	})

minetest.register_node("eurokit:ug_fct_carc_bl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.carc.bl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_carc_br.png",
		"eurokit_ug_fct_carc_bl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_carc_br", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.carc.br,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_carc_bl.png",
		"eurokit_ug_fct_carc_br.png"
	}
	})

minetest.register_node("eurokit:ug_fct_rarc_tl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.rarc.tl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_rarc_tr.png",
		"eurokit_ug_fct_rarc_tl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_rarc_tr", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.rarc.tr,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_rarc_tl.png",
		"eurokit_ug_fct_rarc_tr.png"
	}
	})

minetest.register_node("eurokit:ug_fct_rarc_bl", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.rarc.bl,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_rarc_br.png",
		"eurokit_ug_fct_rarc_bl.png"
	}
	})

minetest.register_node("eurokit:ug_fct_rarc_br", {
	use_texture_alpha = "clip",
	paramtype1 = "light",
	paramtype2 = "facedir",
	groups = { ultraglass = 1, cracky = 3, fct = 1, not_in_creative_inventory = 1 },
	sounds = default.node_sound_glass_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = ultramodels.rarc.br,
	},
	drop = "eurokit:ug_fct",
	tiles = {
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_blank.png",
		"eurokit_ug_fct_rarc_bl.png",
		"eurokit_ug_fct_rarc_br.png"
	}
	})

