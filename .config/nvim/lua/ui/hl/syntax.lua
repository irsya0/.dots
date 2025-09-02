local theme = require("ui.theme").get_theme_tb "base_16"

local syntax = {
    Boolean = {
        fg = theme.base09,
    },

    Character = {
        fg = theme.base08,
    },

    Conditional = {
        fg = theme.base0E,
    },

    Constant = {
        fg = theme.base08,
    },

    Define = {
        fg = theme.base0E,
        sp = "none",
    },

    Delimiter = {
        fg = theme.base0F,
    },

    Float = {
        fg = theme.base09,
    },

    Variable = {
        fg = theme.base05,
    },

    Function = {
        fg = theme.base0D,
    },

    Identifier = {
        fg = theme.base08,
        sp = "none",
    },

    Include = {
        fg = theme.base0D,
    },

    Keyword = {
        fg = theme.base0E,
    },

    Label = {
        fg = theme.base0A,
    },

    Number = {
        fg = theme.base09,
    },

    Operator = {
        fg = theme.base05,
        sp = "none",
    },

    PreProc = {
        fg = theme.base0A,
    },

    Repeat = {
        fg = theme.base0A,
    },

    Special = {
        fg = theme.base0C,
    },

    SpecialChar = {
        fg = theme.base0F,
    },

    Statement = {
        fg = theme.base08,
    },

    StorageClass = {
        fg = theme.base0A,
    },

    String = {
        fg = theme.base0B,
    },

    Structure = {
        fg = theme.base0E,
    },

    Tag = {
        fg = theme.base0A,
    },

    Todo = {
        fg = theme.base0A,
        bg = theme.base01,
    },

    Type = {
        fg = theme.base0A,
        sp = "none",
    },

    Typedef = {
        fg = theme.base0A,
    },
}

local lsp_semantic_tokens = require("core.config").ui.lsp_semantic_tokens

if vim.version().minor >= 9 and lsp_semantic_tokens then
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
