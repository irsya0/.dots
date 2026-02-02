local path = ...

return {
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require(path .. ".web_devicons")
        end,
    },
}