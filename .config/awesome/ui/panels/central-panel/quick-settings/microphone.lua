local awful = require("awful")
local gears = require("gears")
local button = require("ui.panels.central-panel.quick-settings.button")

--- Mic Widget
--- ~~~~~~~~~~~~~~~~~

local mic_on = "󰍬"
local mic_off = "󰍭"

local widget = button(mic_on)

awesome.connect_signal("signal::microphone::get", function(value, muted)
    if muted then
        widget:turn_off()
        widget:set_text(mic_off)
    else
        widget:set_text(mic_on)
        widget:turn_on()
    end
end)
--- buttons
widget:buttons(gears.table.join(awful.button({}, 1, nil, function()
    awful.spawn("pamixer -t --default-source", false)
end)))

return widget
