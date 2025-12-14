local oklch = require "mini.move"
local tailwind = require("oklch-color-picker.tailwind")

local options = {
  highlight = {
    enabled = true,

    -- Async delay in ms.
    edit_delay = 60,
    -- Async delay in ms.
    scroll_delay = 0,

    -- Options: 'background'|'foreground'|'virtual_left'|'virtual_eol'|'foreground+virtual_left'|'foreground+virtual_eol'
    style = "background",
    bold = false,
    italic = false,
    -- `● ` also looks nice, nerd fonts also have bigger shapes ` `, `󰝤 `, and ` `.
    virtual_text = "■ ",
    -- Less than user hl by default (:help vim.highlight.priorities)
    priority = 175,

    -- Prevent attaching to buffers with these filetypes.
    ignore_ft = { "blink-cmp-menu" },

    -- Tint the highlight background for 'foreground' and 'virtual' styles when the
    -- found color is too close to the editor background.
    -- Set `emphasis = false` to disable.
    emphasis = {
      -- Distance (0..1) to the editor background where emphasis activates
      -- (first item for dark themes, second for light ones).
      threshold = { 0.1, 0.17 },
      -- How much (0..255) to offset the color (first item for dark colors, second for light ones).
      amount = { 45, -80 },
    },

    -- List of LSP clients that are allowed to highlight colors:
    -- By default, only fairly performant and useful LSPs are enabled.
    -- Set `enabled_lsps = true` to enable all LSPs anyways.
    enabled_lsps = { "tailwindcss", "cssls", "css_variables" },
    -- Async delay in ms, LSPs also have their own latency.
    lsp_delay = 120,

    -- Disable builtin LSP colors introduced in Nvim 0.12 to avoid conflicts.
    disable_builtin_lsp_colors = true,
  },

  patterns = {
    hex = { priority = -1, "()#%x%x%x+%f[%W]()" },
    hex_literal = { priority = -1, "()0x%x%x%x%x%x%x+%f[%W]()" },

    -- Rgb and Hsl support modern and legacy formats:
    -- rgb(10 10 10 / 50%) and rgba(10, 10, 10, 0.5)
    css_rgb = { priority = -1, "()rgba?%(.-%)()" },
    css_hsl = { priority = -1, "()hsla?%(.-%)()" },
    css_oklch = { priority = -1, "()oklch%([^,]-%)()" },

    tailwind = {
      priority = -2,
      custom_parse = tailwind.custom_parse,
      "%f[%w][%l%-]-%-()%l-%-%d%d%d?%f[%W]()",
    },

    -- Allows any digits, dots, commas or whitespace within brackets.
    numbers_in_brackets = { priority = -10, "%(()[%d.,%s]+()%)" },
  },

  register_cmds = true,

  -- Download Rust binaries automatically.
  auto_download = true,

  -- Use the Windows version of the app on WSL instead of using unreliable WSLg.
  wsl_use_windows_app = true,

  log_level = vim.log.levels.INFO,
}
oklch.setup(options)
