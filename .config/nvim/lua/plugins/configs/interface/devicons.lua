local devicons = require "nvim-web-devicons"
local options = require("core.config").ui.icons
devicons.setup { override = options.devicons }
