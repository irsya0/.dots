local wibox         = require("wibox")
local beautiful     = require("beautiful")
local dpi           = require("beautiful").xresources.apply_dpi
local helpers       = require("helpers")
local upower_daemon = require("signal.battery")

local bat_value     = 50
local hovered       = false

local battery       = wibox.widget({
    {
        {
            id = "icon",
            align = "center",
            valign = 'center',
            font = beautiful.font_name .. "Bold 50",
            markup = helpers.ui.colorize_text("󱐋", beautiful.widget_bg),
            widget = wibox.widget.textbox
        },
        bg = beautiful.accent,
        widget = wibox.container.background
    },
    max_value = 100,
    min_value = 0,
    value = 50,
    thickness = dpi(16),
    rounded_edge = true,
    bg = beautiful.accent .. 'AA',
    colors = { beautiful.widget_bg },
    start_angle = math.pi + math.pi / 2,
    forced_width = beautiful.widget_block(2),
    forced_height = beautiful.widget_block(2),
    widget = wibox.container.arcchart,
})

battery:connect_signal("mouse::enter", function()
    hovered = true
    awesome.emit_signal("desktop::indicator::set", tostring(bat_value) .. "%")
end)

battery:connect_signal("mouse::leave", function()
    hovered = false
    awesome.emit_signal("desktop::indicator::reset")
end)

upower_daemon:connect_signal("no_devices", function(_)
    battery.colors = { beautiful.widget_bg }
end)

upower_daemon:connect_signal("update", function(self, value, state)
    bat_value = value
    battery:set_value(value)
    if hovered then
        awesome.emit_signal("desktop::indicator::set", tostring(bat_value) .. "%")
    end
end)

return function()
    return battery
end
