local path = ...

return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require (path .. ".treesitter")
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require(path .. ".autotag")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        branch = "main"
    },
    {
        "kylechui/nvim-surround",
        lazy = false,
        config = function()
            require(path .. ".sorround")
        end
    },
    {
        "windwp/nvim-ts-autotag",
        lazy = false,
        config = function ()
            require (path .. ".autotag")
        end
    },
    {
        "aaronik/treewalker.nvim",
        lazy = false,
        setup = function ()
            require(path .. ".treewalker")
        end
    }
}
