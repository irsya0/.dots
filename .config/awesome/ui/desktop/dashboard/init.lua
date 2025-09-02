local wibox     = require("wibox")
local awful     = require("awful")
local beautiful = require("beautiful")
local dpi       = beautiful.xresources.apply_dpi
local battery   = require(... .. ".battery")
local music     = require(... .. ".music")
local pomo     = require(... .. ".pomo")

return function(s)
    s.desktop_dashboard = awful.popup({
        type = "desktop",
        screen = s,
        ontop = false,
        visible = true,
        bg = beautiful.transparent,
        placement = function(w)
            awful.placement.top(w, {
                margins = { top = dpi(200) },
            })
        end,
        widget = {
            battery(),
            music(),
            pomo(),
            spacing = beautiful.desktop_widget_margin_size,
            layout = wibox.layout.fixed.horizontal
        }
    })
end
