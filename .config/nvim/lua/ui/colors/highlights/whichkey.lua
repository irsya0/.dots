local base32 = require("ui.colors.engine").get_theme_tb "base_30"

return {
  WhichKey = { fg = base32.blue },
  WhichKeySeparator = { fg = base32.light_grey },
  WhichKeyDesc = { fg = base32.red },
  WhichKeyGroup = { fg = base32.green },
  WhichKeyValue = { fg = base32.green },
}
