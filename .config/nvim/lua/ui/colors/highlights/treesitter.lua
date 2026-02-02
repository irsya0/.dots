local base16 = require("ui.colors.engine").get_theme_tb "base_16"

return {
  -- `@annotation` is not one of the default capture group, should we keep it
  ["@annotation"] = {
    fg = base16.base0F,
  },

  ["@attribute"] = {
    fg = base16.base0A,
  },

  ["@character"] = {
    fg = base16.base08,
  },

  ["@constructor"] = {
    fg = base16.base0C,
  },

  ["@constant"] = {
    fg = base16.base08,
  },

  ["@constant.builtin"] = {
    fg = base16.base09,
  },

  ["@constant.macro"] = {
    fg = base16.base08,
  },

  ["@error"] = {
    fg = base16.base08,
  },

  ["@exception"] = {
    fg = base16.base08,
  },

  ["@float"] = {
    fg = base16.base09,
  },

  ["@keyword"] = {
    fg = base16.base0E,
  },

  ["@keyword.function"] = {
    fg = base16.base0E,
  },

  ["@keyword.return"] = {
    fg = base16.base0E,
  },

  ["@function"] = {
    fg = base16.base0D,
  },

  ["@function.builtin"] = {
    fg = base16.base0D,
  },

  ["@function.macro"] = {
    fg = base16.base08,
  },

  ["@function.call"] = {
    fg = base16.base0D,
  },

  ["@operator"] = {
    fg = base16.base05,
  },

  ["@keyword.operator"] = {
    fg = base16.base0E,
  },

  ["@method"] = {
    fg = base16.base0D,
  },

  ["@method.call"] = {
    fg = base16.base0D,
  },

  ["@namespace"] = {
    fg = base16.base08,
  },

  ["@none"] = {
    fg = base16.base05,
  },

  ["@parameter"] = {
    fg = base16.base08,
  },

  ["@reference"] = {
    fg = base16.base05,
  },

  ["@punctuation.bracket"] = {
    fg = base16.base0F,
  },

  ["@punctuation.delimiter"] = {
    fg = base16.base0F,
  },

  ["@punctuation.special"] = {
    fg = base16.base08,
  },

  ["@string"] = {
    fg = base16.base0B,
  },

  ["@string.regex"] = {
    fg = base16.base0C,
  },

  ["@string.escape"] = {
    fg = base16.base0C,
  },

  ["@string.special"] = {
    fg = base16.base0C,
  },

  ["@symbol"] = {
    fg = base16.base0B,
  },

  ["@tag"] = {
    link = "Tag",
  },

  ["@tag.attribute"] = {
    link = "@property",
  },

  ["@tag.delimiter"] = {
    fg = base16.base0F,
  },

  ["@text"] = {
    fg = base16.base05,
  },

  ["@text.strong"] = {
    bold = true,
  },

  ["@text.emphasis"] = {
    fg = base16.base09,
  },

  ["@text.strike"] = {
    fg = base16.base0F,
    strikethrough = true,
  },

  ["@text.literal"] = {
    fg = base16.base09,
  },

  ["@text.uri"] = {
    fg = base16.base09,
    underline = true,
  },

  ["@type.builtin"] = {
    fg = base16.base0A,
  },

  ["@variable"] = {
    fg = base16.base05,
  },

  ["@variable.builtin"] = {
    fg = base16.base09,
  },

  -- variable.global

  ["@definition"] = {
    sp = base16.base04,
    underline = true,
  },

  -- TSDefinitionUsage = {
  --   sp = theme.base04,
  --   underline = true,
  -- },

  ["@scope"] = {
    bold = true,
  },

  ["@field"] = {
    fg = base16.base08,
  },

  ["@field.key"] = {
    fg = base16.base08,
  },

  ["@property"] = {
    fg = base16.base08,
  },

  ["@include"] = {
    link = "Include",
  },

  ["@conditional"] = {
    link = "Conditional",
  },
}
