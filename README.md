# behemoth.nvim

### Install

```sh
git clone https://github.com/MensoDev/behemoth.nvim.git ~/.config/nvim/ && nvim
```

### Uninstall

```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```


# Teste and debug


- neotest = A framework for interacting with tests within NeoVim.
- 

# Tree

- lua
    - startup
        - 0 - init.lua
        - 1 - settings.lua
        - 2 - keymaps.lua
        - 3 - lazy.lua
    - configs
    - plugins (loaded by lazy.lua)
        - themes
            - tokyonight.lua
            - cattpuccin.lua
            - icons.lua
        - ui
            - lualine.lua
        - code
            - treesitter.lua
            - roslyn.lua
            - lspconfig.lua
            - mason.lua
            - debug.lua
            - tests.lua
            - todo-comments.lua
        - explorer
            - oil.lua
        - utils
            - whichkeys.lua (thinking)
