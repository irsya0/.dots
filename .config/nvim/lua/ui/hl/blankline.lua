local colors = require("ui.theme").get_theme_tb "base_30"

return {
  IndentBlanklineChar = { fg = colors.line },
  IndentBlanklineSpaceChar = { fg = colors.line },
  IndentBlanklineContextChar = { fg = colors.grey },
  IndentBlanklineContextStart = { bg = colors.one_bg2 },
  ["@ibl.scope.underline.1"] = { bg = colors.black2 },
}
