local M = {}
local merge_tb = vim.tbl_deep_extend

M.load_mappings = function(section, mapping_opt)
    vim.schedule(function()
        local function set_section_map(section_values)
            if section_values.plugin then
                return
            end

            section_values.plugin = nil

            for mode, mode_values in pairs(section_values) do
                local default_opts = merge_tb("force", { mode = mode }, mapping_opt or {})
                for keybind, mapping_info in pairs(mode_values) do
                    -- merge default + user opts
                    local opts = merge_tb("force", default_opts, mapping_info.opts or {})

                    mapping_info.opts, opts.mode = nil, nil
                    opts.desc = mapping_info[2]

                    vim.keymap.set(mode, keybind, mapping_info[1], opts)
                end
            end
        end

        local mappings = require("core.config").mappings

        if type(section) == "string" then
            mappings[section]["plugin"] = nil
            mappings = { mappings[section] }
        end

        for _, sect in pairs(mappings) do
            set_section_map(sect)
        end
    end)
end

M.lazy_load = function(plugin)
    vim.api.nvim_create_autocmd({ "BufRead", "BufWinEnter", "BufNewFile" }, {
        group = vim.api.nvim_create_augroup("BeLazyOnFileOpen" .. plugin, {}),
        callback = function()
            local file = vim.fn.expand "%"
            local condition = file ~= "NvimTree_1" and file ~= "[lazy]" and file ~= ""

            if condition then
                vim.api.nvim_del_augroup_by_name("BeLazyOnFileOpen" .. plugin)

                -- dont defer for treesitter as it will show slow highlighting
                -- This deferring only happens only when we do "nvim filename"
                if plugin ~= "nvim-treesitter" then
                    vim.schedule(function()
                        require("lazy").load { plugins = plugin }

                        if plugin == "nvim-lspconfig" then
                            vim.cmd "silent! do FileType"
                        end
                    end, 0)
                else
                    require("lazy").load { plugins = plugin }
                end
            end
        end,
    })
end

return M
