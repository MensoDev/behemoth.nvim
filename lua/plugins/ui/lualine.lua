-- return {
--     {
--         'nvim-lualine/lualine.nvim',
--         dependencies = { 'nvim-tree/nvim-web-devicons' },
--         config = function()
--             require('lualine').setup({
--                 options = { section_separators = '', component_separators = '' }
--             })
--         end
--     }
-- }

return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()

            local function macro_recording()
                local reg = vim.fn.reg_recording()
                if reg ~= "" then
                    return " REC @" .. reg
                end
                return ""
            end

            require('lualine').setup({
                options = {
                    section_separators = '',
                    component_separators = ''
                },
                sections = {
                    lualine_a = { 'mode' },
                    lualine_b = { 'branch' },
                    lualine_c = { 'filename' },
                    lualine_x = {
                        macro_recording, -- 👈 indicador aqui
                        'encoding',
                        'fileformat',
                        'filetype'
                    },
                    lualine_y = { 'progress' },
                    lualine_z = { 'location' }
                }
            })

            -- Atualiza imediatamente ao iniciar/parar gravação
            vim.api.nvim_create_autocmd("RecordingEnter", {
                callback = function()
                    require("lualine").refresh()
                end,
            })

            vim.api.nvim_create_autocmd("RecordingLeave", {
                callback = function()
                    require("lualine").refresh()
                end,
            })
        end
    }
}
