return {
	entry = function()
		local h = cx.active.current.hovered
		-- ya.manager_emit(h and h.cha.is_dir and "enter" or "open", { hovered = true })
		if h.cha.is_dir then
			ya.manager_emit("enter" or "open", { hovered = true })
		else
			local file_path = tostring(h.url)
			os.execute("fish -c 'yazi-wezterm-open-file " .. file_path .. "'")
		end
	end,
}
