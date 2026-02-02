local base32 = require("ui.colors.engine").get_theme_tb "base_30"

return {
  IndentBlanklineChar = { fg = base32.line },
  IndentBlanklineSpaceChar = { fg = base32.line },
  IndentBlanklineContextChar = { fg = base32.grey },
  IndentBlanklineContextStart = { bg = base32.one_bg2 },
  ["@ibl.scope.underline.1"] = { bg = base32.black2 },
}
