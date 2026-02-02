local base16 = require("ui.colors.engine").get_theme_tb "base_16"
local base32 = require("ui.colors.engine").get_theme_tb "base_30"

return {

  diffOldFile = {
    fg = base32.baby_pink,
  },

  diffNewFile = {
    fg = base32.blue,
  },

  DiffAdd = {
    fg = base32.blue,
  },

  DiffAdded = {
    fg = base32.green,
  },

  DiffChange = {
    fg = base32.light_grey,
  },

  DiffChangeDelete = {
    fg = base32.red,
  },

  DiffModified = {
    fg = base32.orange,
  },

  DiffDelete = {
    fg = base32.red,
  },

  DiffRemoved = {
    fg = base32.red,
  },

  DiffText = {
    fg = base32.white,
    bg = base32.black2,
  },

  -- git commits
  gitcommitOverflow = {
    fg = base16.base08,
  },

  gitcommitSummary = {
    fg = base16.base0B,
  },

  gitcommitComment = {
    fg = base16.base03,
  },

  gitcommitUntracked = {
    fg = base16.base03,
  },

  gitcommitDiscarded = {
    fg = base16.base03,
  },

  gitcommitSelected = {
    fg = base16.base03,
  },

  gitcommitHeader = {
    fg = base16.base0E,
  },

  gitcommitSelectedType = {
    fg = base16.base0D,
  },

  gitcommitUnmergedType = {
    fg = base16.base0D,
  },

  gitcommitDiscardedType = {
    fg = base16.base0D,
  },

  gitcommitBranch = {
    fg = base16.base09,
    bold = true,
  },

  gitcommitUntrackedFile = {
    fg = base16.base0A,
  },

  gitcommitUnmergedFile = {
    fg = base16.base08,
    bold = true,
  },

  gitcommitDiscardedFile = {
    fg = base16.base08,
    bold = true,
  },

  gitcommitSelectedFile = {
    fg = base16.base0B,
    bold = true,
  },
}
