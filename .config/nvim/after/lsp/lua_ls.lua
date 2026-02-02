return {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "awesome" },
            },
            runtime = { version = "LuaJIT" },
            workspace = {
                library = {
                    vim.fn.expand "$VIMRUNTIME/lua",
                    vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
                    vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
                    "${3rd}/luv/library",
                },
            },
        },
    }
}
