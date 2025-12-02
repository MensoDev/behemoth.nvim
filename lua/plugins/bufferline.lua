return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup({
                options = {
                    -- configure suas opções aqui
                    always_show_bufferline = true, -- Garante que a linha de buffer esteja sempre visível
                }               
            })
        end
    }
}
