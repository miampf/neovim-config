-- require other files
require "autocommands"
require "config.plugins"
require "config.options"
require "config.keymap"

require("mason").setup() -- set up mason
require("toggleterm").setup() -- set up toggleterm
require "plugins.coc" -- load the CoC config

