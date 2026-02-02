local path = ...

return {
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        config = function()
            require(path .. ".cmp")
        end,
        dependencies = {           -- cmp sources plugins
            {
                "saadparwaiz1/cmp_luasnip",
                "David-Kunz/cmp-npm",
                "hrsh7th/cmp-nvim-lua",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-calc",
                "hrsh7th/cmp-emoji",
                "L3MON4D3/LuaSnip",
                "windwp/nvim-autopairs"
            },
        },
    },
    {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        lazy = true,
        config = function()
            require(path .. ".luasnip")
        end,
    },
    -- autopairing of (){}[] etc
    {
        "windwp/nvim-autopairs",
        lazy = true,
        config = function(_, opts)
            require(path .. ".autopairs")
        end,
    },
    -- File Tree
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require(path .. ".nvimtree")
        end,
    },
}
