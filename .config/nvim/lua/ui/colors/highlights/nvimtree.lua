local base32 = require("ui.colors.engine").get_theme_tb "base_30"

return {
  NvimTreeEmptyFolderName = { fg = base32.folder_bg },
  NvimTreeEndOfBuffer = { fg = base32.darker_black },
  NvimTreeFolderIcon = { fg = base32.folder_bg },
  NvimTreeFolderName = { fg = base32.folder_bg },
  NvimTreeGitDirty = { fg = base32.red },
  NvimTreeIndentMarker = { fg = base32.grey_fg },
  NvimTreeNormal = { bg = base32.darker_black },
  NvimTreeNormalNC = { bg = base32.darker_black },
  NvimTreeOpenedFolderName = { fg = base32.folder_bg },
  NvimTreeGitIgnored = { fg = base32.light_grey },

  NvimTreeWinSeparator = {
    fg = base32.darker_black,
    bg = base32.darker_black,
  },

  NvimTreeWindowPicker = {
    fg = base32.red,
    bg = base32.black2,
  },

  NvimTreeCursorLine = {
    bg = base32.black2,
  },

  NvimTreeGitNew = {
    fg = base32.yellow,
  },

  NvimTreeGitDeleted = {
    fg = base32.red,
  },

  NvimTreeSpecialFile = {
    fg = base32.yellow,
    bold = true,
  },

  NvimTreeRootFolder = {
    fg = base32.red,
    bold = true,
  },
}
