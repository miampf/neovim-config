return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- mason
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }

  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  -- chadtree
  use {"ms-jpq/chadtree"}

  -- toggleterm
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- CoC
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Eunuch
  use {"tpope/vim-eunuch"}

  -- startify
  use {"mhinz/vim-startify"}

  -- arshamiser
  use({
    "arsham/arshamiser.nvim",
    requires = {
      "arsham/arshlib.nvim",
      "famiu/feline.nvim",
      "rebelot/heirline.nvim",
      "kyazdani42/nvim-web-devicons",
      "nanotee/sqls.nvim"
    },
    config = function()
      -- ignore any parts you don't want to use
      vim.cmd.colorscheme("catppuccin")
      require("arshamiser.feliniser")
      -- or:
      -- require("arshamiser.heirliniser")

      _G.custom_foldtext = require("arshamiser.folding").foldtext
      vim.opt.foldtext = "v:lua.custom_foldtext()"
      -- if you want to draw a tabline:
      vim.api.nvim_set_option("tabline", [[%{%v:lua.require("arshamiser.tabline").draw()%}]])
    end,
  })

  -- catpuccin color scheme
  use { "catppuccin/nvim", as = "catppuccin" }
end)

