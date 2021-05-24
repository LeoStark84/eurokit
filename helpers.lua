-- FUNCTIONS USED BY THE MOD
-- nothing too fancy, but get the job done

function place_in_grid(pos, placer, pointed_thing, ngroup, modname, node_id, wmflag)
	local gridax = find_grid_axis(pos, ngroup)
	local nodetoplace = ""
	if gridax then
		local pers = minetest.dir_to_facedir(minetest.yaw_to_dir(placer:get_look_horizontal()))
		local lfront, lback, nbld, nbln, lightfix
		nodetoplace = get_pig(pos, gridax, ngroup, pers)
		if nodetoplace then
			nodetoplace = modname .. ":" .. node_id .. "_".. nodetoplace
		end
		restricted_rotation(placer, pointed_thing.above, nodetoplace, wmflag)
		if gridax ~= "y" then
			if minetest.get_item_group(minetest.get_node(get_pos_at(pos, gridax, -1)).name, ngroup) == 1 then
				restricted_rotation(placer, get_pos_at(pos, gridax, -1), modname .. ":" .. node_id .. "_" .. get_pig(get_pos_at(pos, gridax, -1), gridax, ngroup, pers), wmflag)
			end
			if minetest.get_item_group(minetest.get_node(get_pos_at(pos, gridax, 1)).name, ngroup) == 1 then
				restricted_rotation(placer, get_pos_at(pos, gridax, 1), modname .. ":" .. node_id .. "_" .. get_pig(get_pos_at(pos, gridax, 1), gridax, ngroup, pers), wmflag)
			end
		else
			local nucen = get_pos_at(pos, "y", 1)
			local nugridax = find_grid_axis(nucen, ngroup)
			if  nugridax and (nugridax ~= "y") then 
				gridax = nugridax
			else
				nucen = get_pos_at(pos, "y", -1)
				nugridax = find_grid_axis(nucen, ngroup)
				if nugridax and (nugridax ~= "y") then
					gridax = nugridax
				end
			end
		end
		if minetest.get_item_group(minetest.get_node(get_pos_at(pos, "y", -1)).name, ngroup) == 1 then
			restricted_rotation(placer, get_pos_at(pos, "y", -1), modname .. ":" .. node_id .. "_" .. get_pig(get_pos_at(pos, "y", -1), gridax, ngroup, pers), wmflag)
		end
		if minetest.get_item_group(minetest.get_node(get_pos_at(pos, "y", 1)).name, ngroup) == 1 then
			restricted_rotation(placer, get_pos_at(pos, "y", 1), modname .. ":" .. node_id .. "_" .. get_pig(get_pos_at(pos, "y", 1), gridax, ngroup, pers), wmflag)
		end
	else
		nodetoplace = modname .. ":" .. node_id .. "_" .. "cc"
		restricted_rotation(placer, pointed_thing.above, nodetoplace, wmflag)
	end
end

function get_pig(pos, axis, ngroup, plang)
	local abort = false
	local top, left, right, bottom
	local topleft, topright, bottomleft, bottomright
	local n2p = ""
	if type(pos) ~= "table" then
		abort = true
		minetest.log("pos is not a table")
	else
		if (not pos.x) or (type(pos.x) ~= "number") then
			abort = true
			minetest.log("x coord not valid, x = " .. tostring(pos.x))
		end
		if (not pos.y) or (type(pos.y) ~= "number") then
			abort = true
			minetest.log("y coord not valid, y = " .. tostring(pos.y))
		end
		if (not pos.z) or (type(pos.z) ~= "number") then
			abort = true
			minetest.log("z coord not valid, z = " .. tostring(pos.z))
		end
	end
	if not axis then
		abort = true
		minetest.log("axis not provided")
	else
		if (axis ~= "x") and (axis ~= "z") and (axis ~= "y") then
			abort = true
			minetest.log("axis value " .. tostring(axis) .. " is not valid")
		end
	end
	if not ngroup then
		abort = true
		minetest.log("ngroup not provided")
	end
	if not abort then
		if  (axis == "x") or (axis == "z") then
			left = minetest.get_item_group(minetest.get_node(get_pos_at(pos, axis, -1)).name, ngroup)
			right = minetest.get_item_group(minetest.get_node(get_pos_at(pos, axis, 1)).name, ngroup)
		else
			left = 0
			right = 0
		end
		top = minetest.get_item_group(minetest.get_node(get_pos_at(pos, "y", 1)).name, ngroup)
		bottom = minetest.get_item_group(minetest.get_node(get_pos_at(pos, "y", -1)).name, ngroup)
		if (top == 0) and (bottom == 1) then
			if (left == 0) and (right == 1) then
				if (plang ~= 1) and (plang ~= 2) then
					n2p = "tl"
				else
					n2p = "tr"
				end
			elseif (right == 0) and (left == 1)  then
				if (plang ~= 1) and (plang ~= 2) then
					n2p = "tr"
				else
					n2p = "tl"
				end
			else
				n2p = "tc"
			end
		elseif (bottom == 0) and (top == 1) then
			if (left == 0) and (right == 1) then
				if (plang ~= 1) and (plang ~= 2) then
					n2p = "bl"
				else
					n2p = "br"
				end
			elseif (right == 0) and (left == 1) then
				if (plang ~= 1) and (plang ~= 2) then
					n2p = "br"
				else
					n2p = "bl"
				end
			else
				n2p = "bc"
			end
		elseif (left == 0) and (right == 1) then
			if (plang ~= 1) and (plang ~= 2) then
					n2p = "cl"
				else
					n2p = "cr"
				end
		elseif (right == 0) and (left == 1) then
			if (plang ~= 1) and (plang ~= 2) then
					n2p = "cr"
				else
					n2p = "cl"
				end
		else
			n2p = "cc"
		end
	else
		n2p = false
	end
	return n2p
end

function get_pos_at(pos, axis, dist)
	local nupos = {}
	if axis == "x" then
		nupos = { x = pos.x + dist, y = pos.y, z = pos.z }
	elseif axis == "y" then
		nupos = { x = pos.x, y = pos.y + dist, z = pos.z }
	elseif axis == "z" then
		nupos = { x = pos.x, y = pos.y, z = pos.z + dist }
	else
		nupos = { x = pos.x, y = pos.y, z = pos.z }
	end
	return nupos
end

function find_grid_axis(pos, grp)
	local xm = minetest.get_item_group(minetest.get_node(get_pos_at(pos, "x", -1)).name, grp)
	local xp = minetest.get_item_group(minetest.get_node(get_pos_at(pos, "x", 1)).name, grp)
	local zm = minetest.get_item_group(minetest.get_node(get_pos_at(pos, "z", -1)).name, grp)
	local zp = minetest.get_item_group(minetest.get_node(get_pos_at(pos, "z", 1)).name, grp)
	local ym = minetest.get_item_group(minetest.get_node(get_pos_at(pos, "y", -1)).name, grp)
	local yp = minetest.get_item_group(minetest.get_node(get_pos_at(pos, "y", 1)).name, grp)
	local gridax = ""
	if xm+xp >= 1 then
		gridax = "x"
	elseif zm+zp >= 1 then
		gridax = "z"
	elseif ym+yp >= 1 then
		gridax = "y"
	else
		gridax = false
	end
	return gridax
end

function restricted_rotation(placer, abovept, nodename, wmflag)
	local nuface = 0
	if wmflag then
		nuface = minetest.dir_to_wallmounted(minetest.yaw_to_dir(placer:get_look_horizontal()))
		minetest.swap_node(abovept, { name = nodename, param2 = nuface })
	else
		nuface = minetest.dir_to_facedir(minetest.yaw_to_dir(placer:get_look_horizontal()))
		minetest.swap_node(abovept, { name = nodename, param2 = nuface })
	end
end

function diagopclo(pos, nip)
	local topos = {}
	if nip == "b" then
		topos = get_pos_at(pos, "y", 1)
	else
		topos = { x = pos.x, y = pos.y, z = pos.z }
		pos = get_pos_at(pos, "y", -1)
	end
	local nupar2 = -1
	local nubopos, nutopos = {}, {}
	local topos = { x = pos.x, y = pos.y+1, z = pos.z }
	local botnode = minetest.get_node(pos)
	local topnode = minetest.get_node(topos)
	if botnode.param2 == 0 then
		nupar2 = 1
		nubopos = get_pos_at(pos, "x", -1)
	elseif botnode.param2 == 1 then
		nupar2 = 0
		nubopos = get_pos_at(pos, "x", 1)
	elseif botnode.param2 == 2 then
		nupar2 = 3
		nubopos = get_pos_at(pos, "z", -1)
	elseif botnode.param2 == 3 then
		nupar2 = 2
		nubopos = get_pos_at(pos, "z", 1)
	else
		minetest.log("node " .. node.name .. " at " .. pos.x .. ", " .. pos.y .. ", " .. pos.z .. " has a weird param2: " .. node.param2)
	end
	nutopos = get_pos_at(nubopos, "y", 1)
	if (minetest.get_node(nubopos).name == "air") and (minetest.get_node(nutopos).name == "air") then
		minetest.swap_node(pos, { name = "air" })
		minetest.swap_node(topos, { name = "air" })
		minetest.swap_node(nubopos, { name = botnode.name, param2 = nupar2 })
		minetest.swap_node(nutopos, { name = topnode.name, param2 = nupar2 })
	end
end

function adn(ddrvar, pos)
	if ddrvar == "t" then
		return { x = pos.x, y = pos.y-1, z = pos.z }
	elseif ddrvar == "b" then
		return { x = pos.x, y = pos.y+1, z = pos.z }
	else
		return pos
	end
end

function ultradapt(pos,preffix, plfd)
	-- declare vars
	local ndnm = ""
	local ndfd = -1
	local ndgr = ""
	local ndpo = {}
	local nd = {}
	local found = false
	local tmods = #ultraindex
	local ndtype = ""
	local model = 0
	local i = 1
	local dirs = 0
	local ndsuf = ""
	local unodename = ""
	-- get adjacent positions
	local poxp = { x = pos.x+1, y = pos.y, z = pos.z }
	local poxm = { x = pos.x-1, y = pos.y, z = pos.z }
	local pozp = { x = pos.x, y = pos.y, z = pos.z+1 }
	local pozm = { x = pos.x, y = pos.y, z = pos.z-1 }
	-- search adjacent positions for ultramodels
	local grxp = minetest.get_item_group(minetest.get_node(poxp).name, "ultramodel")
	local grxm = minetest.get_item_group(minetest.get_node(poxm).name, "ultramodel")
	local grzp = minetest.get_item_group(minetest.get_node(pozp).name, "ultramodel")
	local grzm = minetest.get_item_group(minetest.get_node(pozm).name, "ultramodel")
	-- see if adj nodes are ultra
	if grxp == 1 then -- x+1 first
		ndpo = poxp
		nd = minetest.get_node(poxp)
	elseif grxm == 1 then -- then x-1
		ndpo = poxm
		nd = minetest.get_node(poxm)
	elseif grzp == 1 then -- z+1 third
		ndpo = pozp
		nd = minetest.get_node(pozp)
	elseif grzm == 1 then -- z-1 last
		ndpo = pozm
		nd = minetest.get_node(pozm)
	else -- no ultramodel has been found
		nd = false
	end
	-- ask if there is an ultra model
	if nd then -- if so
		-- get the exact ultramodel ID
		while (not found) and (i <= tmods) do
			ndgr = minetest.get_item_group(nd.name, ultraindex[i])
			if ndgr == 1 then
				found = true
				ndtype = ultraindex[i]
			else
				i = i + 1
			end
		end
		-- get ultramodel possible directions
		if ultramodels[ndtype].br then
			dirs = 4
		elseif ultramodels[ndtype].r then
			dirs = 2
		else
			dirs = 1
		end
		-- get the last bit of the suffix
		if dirs > 1 then -- if ultra ID has more than 1 possible directions
			ndsuf = get_dirsuf(dirs, pos, ndpo, nd.param2)
			if ndsuf then
				unodename = modname .. ":" .. preffix .. "_" .. ndtype .. "_" .. ndsuf
			else
				unodename = modname .. ":" .. preffix
			end
		else -- if ultra ID has a single direction
			unodename = modname .. ":" .. preffix .. "_" .. ndtype
		end
		
	else -- not nd just olace basic square node
		unodename = modname .. ":" .. preffix
	end
	minetest.swap_node(pos, { name = unodename, param2 = plfd })
end

function get_dirsuf(dirs, pos, refpos, reffd)
	local dirsuf
	if dirs == 2 then
		if pos.x > refpos.x then -- XM
			if reffd == 2 then
				dirsuf = "l"
			elseif reffd == 0 then
				dirsuf = "r"
			else
				dirsuf = false
			end
		elseif pos.x < refpos.x then -- XP
			if reffd == 0 then
				dirsuf = "l"
			elseif reffd == 2 then
				dirsuf = "r"
			else
				dirsuf = false
			end
		elseif pos.z > refpos.z then -- ZM
			if reffd == 1 then
				dirsuf = "l"
			elseif reffd == 3 then
				dirsuf = "r"
			else
				dirsuf = false
			end
		elseif pos.z < refpos.z then -- ZP
			if reffd == 3 then
				dirsuf = "l"
			elseif reffd == 1 then
				dirsuf = "r"
			else
				dirsuf = false
			end
		end
	elseif dirs == 4 then
		if pos.x < refpos.x then -- XP
			if reffd == 0 then
				dirsuf = "bl"
			elseif reffd == 2 then
				dirsuf = "br"
			elseif reffd == 20 then
				dirsuf = "tl"
			elseif reffd == 22 then
				dirsuf = "tr"
			else
				dirsuf = false
			end
		elseif pos.x > refpos.x then -- XM
			if reffd == 0 then
				dirsuf = "br"
			elseif reffd == 2 then
				dirsuf = "bl"
			elseif reffd == 20 then
				dirsuf = "tr"
			elseif reffd == 22 then
				dirsuf = "tl"
			else
				dirsuf = false
			end
		elseif pos.z < refpos.z then -- ZP
			if reffd == 1 then
				dirsuf = "br"
			elseif reffd == 3 then
				dirsuf = "bl"
			elseif reffd == 21 then
				dirsuf = "tl"
			elseif reffd == 23 then
				dirsuf = "tr"
			else
				dirsuf = false
			end
		elseif pos.z > refpos.z then -- ZM
			if reffd == 1 then
				dirsuf = "bl"
			elseif reffd == 3 then
				dirsuf = "br"
			elseif reffd == 21 then
				dirsuf = "tr"
			elseif reffd == 23 then
				dirsuf = "tl"
			else
				dirsuf = false
			end
		else
			dirsuf = false
			minetest.log("Wrong ultranode position or ultramodel position")
		end
	else
		minetest.log("Wrong directions paramter provided to [get_dirsuf] " .. tostring(dirs))
		dirsuf = false
	end
	return dirsuf
end
