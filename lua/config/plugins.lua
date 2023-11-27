return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- todo-comments
  use 'folke/todo-comments.nvim'

  -- plenary - required by todo-comments
  use "nvim-lua/plenary.nvim"

  -- mason
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }

  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  -- jdtls
  use 'mfussenegger/nvim-jdtls'

  -- chadtree
  use {"ms-jpq/chadtree"}

  -- toggleterm
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- CoC
  use {'neoclide/coc.nvim', branch = 'release'}

  -- crytal programming
  use {'vim-crystal/vim-crystal'}

  -- Eunuch
  use {"tpope/vim-eunuch"}

  -- Docker
  use {"ekalinin/Dockerfile.vim"}

  -- typst :)))
  use {'kaarmu/typst.vim', ft = {'typst'}}

  -- startify
  use {"mhinz/vim-startify"}

  -- vim-rustfmt
  use {"alx741/vim-rustfmt"}

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

  -- vim-commentary
  use {"tpope/vim-commentary"}

  -- barbar
  use {'nvim-tree/nvim-web-devicons'}
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

  -- vimtex
  use {"lervag/vimtex"}

  -- omnisharp
  use {"OmniSharp/omnisharp-vim"}

  -- catpuccin color scheme
  use { "catppuccin/nvim", as = "catppuccin" }
end)

