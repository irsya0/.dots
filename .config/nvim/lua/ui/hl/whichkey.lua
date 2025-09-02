local colors = require("ui.theme").get_theme_tb "base_30"

return {
  WhichKey = { fg = colors.blue },
  WhichKeySeparator = { fg = colors.light_grey },
  WhichKeyDesc = { fg = colors.red },
  WhichKeyGroup = { fg = colors.green },
  WhichKeyValue = { fg = colors.green },
}
