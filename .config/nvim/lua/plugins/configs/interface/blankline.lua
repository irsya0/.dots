local ibl = require("ibl")
local hooks = require "ibl.hooks"

local options = {
  indent = { char = "│", highlight = "IndentBlanklineChar" },
  scope = { char = "│", highlight = "IndentBlanklineContextChar" },
}
hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
ibl.setup(options)
