return function(wezterm)
	wezterm.on("update-right-status", function(window, pane)
		local date = wezterm.strftime("%A %-d %B %Y %H:%M ")

		local bat = ""
		for _, b in ipairs(wezterm.battery_info()) do
			bat = "🔋 " .. string.format("%.0f%%", b.state_of_charge * 100)
			if tostring(b.state_of_charge) == "nan" then
				bat = ""
			end
		end

		window:set_right_status(wezterm.format({
			{ Text = bat .. "   " .. date },
		}))
	end)
end
