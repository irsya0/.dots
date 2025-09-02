local awful           = require("awful")
local beautiful       = require("beautiful")
local wibox           = require("wibox")
local xresources      = require("beautiful.xresources")
local dpi             = xresources.apply_dpi
local widgets         = require("ui.widgets")
local gears           = require("gears")
local apps            = require("configuration.apps")

local launcher        = function(icon, label, cmd)
    local launcher = widgets.button.text.state({
        forced_width = beautiful.desktop_icon_size,
        forced_height = beautiful.desktop_icon_size,
        normal_bg = beautiful.widget_bg,
        text_normal_bg = beautiful.accent,
        hover_bg = beautiful.accent,
        text_hover_bg = beautiful.widget_bg,
        normal_shape = gears.shape.circle,
        font = beautiful.icon_font .. "Round ",
        size = 16,
        text = icon,
    })
    launcher:buttons(gears.table.join(awful.button({}, 1, nil, function()
        awful.spawn.easy_async_with_shell(cmd, function() end)
    end)))

    local widget = wibox.widget({
        launcher,
        {
            align = "center",
            valign = 'center',
            font = beautiful.font_name .. "Medium 10",
            markup = label,
            widget = wibox.widget.textbox
        },
        spacing = dpi(10),
        forced_width = beautiful.desktop_icon_size,
        layout = wibox.layout.fixed.vertical
    })

    return widget
end

local widget_contents = wibox.widget {
    launcher("󱐌", "Term", apps.default.terminal),
    launcher("󰂓", "Code", apps.default.code_editor),
    launcher("󰖟", "Web", apps.default.web_browser),
    launcher("󰉋", "File", apps.default.file_manager),
    launcher("󰃮", "Cal", apps.default.calendar),
    launcher("󰇮", "Mail", apps.default.email),
    spacing = dpi(20),
    layout = wibox.layout.fixed.horizontal
}

return function(s)
    s.desktop_icons = awful.popup({
        type = "desktop",
        screen = s,
        bg = beautiful.transparent,
        ontop = false,
        visible = true,
        placement = function(w)
            awful.placement.bottom(w, {
                margins = { bottom = 4 * beautiful.wibar_height + 2 * beautiful.useless_gap },
            })
        end,
        widget = widget_contents
    })
end
