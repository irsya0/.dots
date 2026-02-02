local base32 = require("ui.colors.engine").get_theme_tb "base_30"

return {
  MasonHeader = { bg = base32.red, fg = base32.black },
  MasonHighlight = { fg = base32.blue },
  MasonHighlightBlock = { fg = base32.black, bg = base32.green },
  MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
  MasonHeaderSecondary = { link = "MasonHighlightBlock" },
  MasonMuted = { fg = base32.light_grey },
  MasonMutedBlock = { fg = base32.light_grey, bg = base32.one_bg },
}
