local autopairs = require("nvim-autopairs")

local options = {
    fast_wrap = {},
    disable_filetype = { "TelescopePrompt", "vim" },
}

autopairs.setup(options)

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())