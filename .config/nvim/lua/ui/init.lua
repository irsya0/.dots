local config = require("core.config")

-- THEMING
require("ui.themes")
local colors = require("ui.theme")
colors.load_theme(config.ui.theme)
colors.load_all_highlights()

require "ui.components"
