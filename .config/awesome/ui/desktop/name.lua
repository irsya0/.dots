local awful     = require("awful")
local beautiful = require("beautiful")
local wibox     = require("wibox")

local name      = wibox.widget({
    widget = wibox.widget.textbox,
    markup = beautiful.name,
    align = "center",
    valign = "center",
    font = beautiful.font_name .. "Medium 15",
})

awesome.connect_signal("desktop::indicator::reset", function()
    name:set_markup(beautiful.name)
end)

awesome.connect_signal("desktop::indicator::set", function(value)
    name:set_markup(value)
end)


return function(s)
    s.desktop_indicator = awful.popup({
        type = "desktop",
        screen = s,
        bg = beautiful.transparent,
        ontop = false,
        visible = true,
        placement = function(w)
            awful.placement.top(w, {
                margins = { top = 2 * beautiful.useless_gap },
            })
        end,
        widget = name
    })
end
