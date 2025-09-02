local awful = require("awful")
local gears = require("gears")
local button = require("ui.panels.central-panel.quick-settings.button")

--- Floating-Mode Widget
--- ~~~~~~~~~~~~~~~~~~~~

local floating_mode_state = false

local widget = button("󰌨")

local update_widget = function()
	if floating_mode_state then
		widget:turn_on()
	else
		widget:turn_off()
	end
end

local toggle_action = function()
	local tags = awful.screen.focused().tags
	if not floating_mode_state then
		for _, tag in ipairs(tags) do
			awful.layout.set(awful.layout.suit.floating, tag)
		end
		floating_mode_state = true
		update_widget()
	else
		for _, tag in ipairs(tags) do
			awful.layout.set(awful.layout.suit.tile, tag)
		end
		floating_mode_state = false
		update_widget()
	end
end

widget:buttons(gears.table.join(awful.button({}, 1, nil, function()
	toggle_action()
end)))

return widget
