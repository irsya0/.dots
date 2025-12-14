local awful = require("awful")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local wibox = require("wibox")
local helpers = require("helpers")

--- Notification Panel
--- ~~~~~~~~~~~~~~~~~~

return function(s)
    s.notification_panel = awful.popup({
        type = "popup",
        screen = s,
        minimum_width = dpi(350),
        maximum_width = dpi(350),
        bg = beautiful.transparent,
        ontop = true,
        visible = false,
        placement = function(w)
            awful.placement.top_right(w, { honor_workarea = true, margins = 2 * beautiful.useless_gap })
            awful.placement.maximize_vertically(
                w,
                { honor_workarea = true, margins = 2 * beautiful.useless_gap }
            )
        end,
        widget = {
            {
                { ----------- TOP GROUP -----------
                    helpers.ui.vertical_pad(dpi(30)),
                    {
                        require("ui.panels.notification-panel.notif-center")(s),
                        margins = dpi(20),
                        widget = wibox.container.margin,
                    },
                    layout = wibox.layout.fixed.vertical,
                },
                layout = wibox.layout.flex.vertical,
            },
            shape = helpers.ui.prrect(beautiful.window_rounded and beautiful.border_radius or 0, true, false, false, true),
            bg = beautiful.black,
            widget = wibox.container.background,
        },
    })

    --- Toggle container visibility
    awesome.connect_signal("notification_panel::toggle", function(scr)
        if scr == s then
            s.notification_panel.visible = not s.notification_panel.visible
        end
    end)
end
