local gears = require("gears")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi
local widgets = require("ui.widgets")

return function(icon)
    return widgets.button.text.state({
        forced_width = dpi(60),
        forced_height = dpi(60),
        normal_shape = gears.shape.circle,
        normal_bg = beautiful.widget_bg,
        text_normal_bg = beautiful.accent,
        on_normal_bg = beautiful.accent,
        text_on_normal_bg = beautiful.widget_bg,
        hover_bg = beautiful.accent,
        text_hover_bg = beautiful.widget_bg,

        font = beautiful.icon_font .. "Round ",
        size = 17,
        text = icon,
    })
end
