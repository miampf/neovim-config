-- color setup must be called before loading catpuccin
require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
    }
})

-- require other files
require "autocommands"
require "config.plugins"
require "config.options"
require "config.keymap"

require("mason").setup() -- set up mason
require("toggleterm").setup() -- set up toggleterm
require("todo-comments").setup() -- set up todo-comments
require('leap').create_default_mappings() -- set up leap keybindings
require "plugins.coc" -- load the CoC config
require "plugins.barbar"
require "plugins.toggleterm"

vim.g.OmniSharp_server_use_mono = 1

vim.opt.shell = "/bin/bash"
vim.opt.clipboard ='unnamedplus'

vim.opt.colorcolumn = "120"

