local base32 = require("ui.colors.engine").get_theme_tb "base_30"
local base16 = require("ui.colors.engine").get_theme_tb "base_16"

local generate_color = require("utils.colors").change_hex_lightness

local M = {
  MatchWord = {
    bg = base32.grey,
    fg = base32.white,
  },

  Pmenu = { bg = base32.one_bg },
  PmenuSbar = { bg = base32.one_bg },
  PmenuSel = { bg = base32.pmenu_bg, fg = base32.black },
  PmenuThumb = { bg = base32.grey },

  MatchParen = { link = "MatchWord" },

  Comment = { fg = base32.grey_fg },

  CursorLineNr = { fg = base32.white },
  LineNr = { fg = base32.grey },

  -- floating windows
  FloatBorder = { fg = base32.blue },
  NormalFloat = { bg = base32.darker_black },

  NvimInternalError = { fg = base32.red },
  WinSeparator = { fg = base32.line },

  Normal = {
    fg = base16.base05,
    bg = base16.base00,
  },

  Bold = {
    bold = true,
  },

  Debug = {
    fg = base16.base08,
  },

  Directory = {
    fg = base32.nord_blue,
  },

  Error = {
    fg = base16.base00,
    bg = base16.base08,
  },

  ErrorMsg = {
    fg = base16.base08,
    bg = base16.base00,
  },

  Exception = {
    fg = base16.base08,
  },

  FoldColumn = {
    fg = base16.base0C,
    bg = base16.base01,
  },

  Folded = {
    fg = base16.base03,
    bg = base16.base01,
  },

  IncSearch = {
    fg = base16.base01,
    bg = base16.base09,
  },

  Italic = {
    italic = true,
  },

  Macro = {
    fg = base16.base08,
  },

  ModeMsg = {
    fg = base16.base0B,
  },

  MoreMsg = {
    fg = base16.base0B,
  },

  Question = {
    fg = base16.base0D,
  },

  Search = {
    fg = base16.base01,
    bg = base16.base0A,
  },

  Substitute = {
    fg = base16.base01,
    bg = base16.base0A,
    sp = "none",
  },

  SpecialKey = {
    fg = base16.base03,
  },

  TooLong = {
    fg = base16.base08,
  },

  UnderLined = {
    underline = true,
  },

  Visual = {
    bg = base16.base02,
  },

  VisualNOS = {
    fg = base16.base08,
  },

  WarningMsg = {
    fg = base16.base08,
  },

  WildMenu = {
    fg = base16.base08,
    bg = base16.base0A,
  },

  Title = {
    fg = base16.base0D,
    sp = "none",
  },

  Conceal = {
    bg = "NONE",
  },

  Cursor = {
    fg = base16.base00,
    bg = base16.base05,
  },

  NonText = {
    fg = base16.base03,
  },

  SignColumn = {
    fg = base16.base03,
    sp = "NONE",
  },

  ColorColumn = {
    bg = base16.base01,
    sp = "none",
  },

  CursorColumn = {
    bg = base16.base01,
    sp = "none",
  },

  CursorLine = {
    bg = base32.black2,
    sp = "none",
  },

  QuickFixLine = {
    bg = base16.base01,
    sp = "none",
  },

  -- spell
  SpellBad = {
    undercurl = true,
    sp = base16.base08,
  },

  SpellLocal = {
    undercurl = true,
    sp = base16.base0C,
  },

  SpellCap = {
    undercurl = true,
    sp = base16.base0D,
  },

  SpellRare = {
    undercurl = true,
    sp = base16.base0E,
  },

  healthSuccess = {
    bg = base32.green,
    fg = base32.black,
  },

  -- lazy.nvim
  LazyH1 = {
    bg = base32.green,
    fg = base32.black,
  },

  LazyButton = {
    bg = base32.one_bg,
    fg = generate_color(base32.light_grey, vim.o.bg == "dark" and 10 or -20),
  },

  LazyH2 = {
    fg = base32.red,
    bold = true,
    underline = true,
  },

  LazyReasonPlugin = { fg = base32.red },
  LazyValue = { fg = base32.teal },
  LazyDir = { fg = base16.base05 },
  LazyUrl = { fg = base16.base05 },
  LazyCommit = { fg = base32.green },
  LazyNoCond = { fg = base32.red },
  LazySpecial = { fg = base32.blue },
  LazyReasonFt = { fg = base32.purple },
  LazyOperator = { fg = base32.white },
  LazyReasonKeys = { fg = base32.teal },
  LazyTaskOutput = { fg = base32.white },
  LazyCommitIssue = { fg = base32.pink },
  LazyReasonEvent = { fg = base32.yellow },
  LazyReasonStart = { fg = base32.white },
  LazyReasonRuntime = { fg = base32.nord_blue },
  LazyReasonCmd = { fg = base32.sun },
  LazyReasonSource = { fg = base32.cyan },
  LazyReasonImport = { fg = base32.white },
  LazyProgressDone = { fg = base32.green },
}

return M
