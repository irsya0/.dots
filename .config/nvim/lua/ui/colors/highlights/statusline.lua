local base32 = require("ui.colors.engine").get_theme_tb "base_30"
local generate_color = require("utils.colors").change_hex_lightness

local light_grey = generate_color(base32.light_grey, 8)

local M = {
  StatusLine = { bg = "none" },
  St_gitIcons = { fg = light_grey, bg = "none", bold = true },
  St_lspError = { fg = base32.red, bg = "none" },
  St_lspWarning = { fg = base32.yellow, bg = "none" },
  St_LspHints = { fg = base32.purple, bg = "none" },
  St_LspInfo = { fg = base32.green, bg = "none" },
  St_LspMsg = { fg = base32.green },
  St_Lsp = { fg = base32.green },
  St_EmptySpace = { fg = base32.black, bg = "none" },
  St_EmptySpace2 = { fg = base32.black },
  St_file = { fg = base32.white, bg = "none" },
  St_file_sep = { fg = base32.black, bg = "none" },
  St_sep_r = { fg = base32.one_bg, bg = "none" },
}

local function genModes_hl(modename, col)
  M["St_" .. modename .. "Mode"] = { fg = base32.black, bg = base32[col] }
  M["St_" .. modename .. "ModeSep"] = { fg = base32[col], bg = base32.black }
  M["St_" .. modename .. "modeText"] = { fg = base32[col], bg = base32.one_bg }
end

genModes_hl("Normal", "blue")
genModes_hl("Visual", "cyan")
genModes_hl("Insert", "dark_purple")
genModes_hl("Replace", "orange")
genModes_hl("Confirm", "teal")
genModes_hl("Command", "green")
genModes_hl("Select", "blue")

genModes_hl("Terminal", "green")
genModes_hl("NTerminal", "yellow")


local function gen_hl(name, col)
  M["St_" .. name .. "_bg"] = { fg = base32.black, bg = base32[col] }
  M["St_" .. name .. "_txt"] = { fg = base32[col], bg = base32.one_bg }
  M["St_" .. name .. "_sep"] = { fg = base32[col], bg = base32.black }
end


gen_hl("lsp", "vibrant_green")
gen_hl("lsp_inactive", "pink")

gen_hl("cwd", "purple")
gen_hl("file", "orange")
gen_hl("Pos", "red")

return M
