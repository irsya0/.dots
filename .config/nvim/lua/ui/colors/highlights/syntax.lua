local base16 = require("ui.colors.engine").get_theme_tb "base_16"

local syntax = {
    Boolean = {
        fg = base16.base09,
    },

    Character = {
        fg = base16.base08,
    },

    Conditional = {
        fg = base16.base0E,
    },

    Constant = {
        fg = base16.base08,
    },

    Define = {
        fg = base16.base0E,
        sp = "none",
    },

    Delimiter = {
        fg = base16.base0F,
    },

    Float = {
        fg = base16.base09,
    },

    Variable = {
        fg = base16.base05,
    },

    Function = {
        fg = base16.base0D,
    },

    Identifier = {
        fg = base16.base08,
        sp = "none",
    },

    Include = {
        fg = base16.base0D,
    },

    Keyword = {
        fg = base16.base0E,
    },

    Label = {
        fg = base16.base0A,
    },

    Number = {
        fg = base16.base09,
    },

    Operator = {
        fg = base16.base05,
        sp = "none",
    },

    PreProc = {
        fg = base16.base0A,
    },

    Repeat = {
        fg = base16.base0A,
    },

    Special = {
        fg = base16.base0C,
    },

    SpecialChar = {
        fg = base16.base0F,
    },

    Statement = {
        fg = base16.base08,
    },

    StorageClass = {
        fg = base16.base0A,
    },

    String = {
        fg = base16.base0B,
    },

    Structure = {
        fg = base16.base0E,
    },

    Tag = {
        fg = base16.base0A,
    },

    Todo = {
        fg = base16.base0A,
        bg = base16.base01,
    },

    Type = {
        fg = base16.base0A,
        sp = "none",
    },

    Typedef = {
        fg = base16.base0A,
    },
}

if vim.version().minor >= 9 then
    syntax["@lsp.type.class"] = { link = "Structure" }
    syntax["@lsp.type.decorator"] = { link = "Function" }
    syntax["@lsp.type.enum"] = { link = "Type" }
    syntax["@lsp.type.enumMember"] = { link = "Constant" }
    syntax["@lsp.type.function"] = { link = "@function" }
    syntax["@lsp.type.interface"] = { link = "Structure" }
    syntax["@lsp.type.macro"] = { link = "@macro" }
    syntax["@lsp.type.method"] = { link = "@method" }
    syntax["@lsp.type.namespace"] = { link = "@namespace" }
    syntax["@lsp.type.parameter"] = { link = "@parameter" }
    syntax["@lsp.type.property"] = { link = "@property" }
    syntax["@lsp.type.struct"] = { link = "Structure" }
    syntax["@lsp.type.type"] = { link = "@type" }
    syntax["@lsp.type.typeParamater"] = { link = "TypeDef" }
    syntax["@lsp.type.variable"] = { link = "@variable" }

    -- syntax["@event"] = { fg = theme.base08 }
    -- syntax["@modifier"] = { fg = theme.base08 }
    -- syntax["@regexp"] = { fg = theme.base0F }
end

return syntax
