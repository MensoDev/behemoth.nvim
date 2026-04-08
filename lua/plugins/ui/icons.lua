vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

require("nvim-web-devicons").setup {
    override_by_extension = {
        ["razor"] = {
            icon = "",
            color = "#702de8",
            name = "razor"
        }
    };
}
