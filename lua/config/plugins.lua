return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- mason
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }

  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  -- neotree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- toggleterm
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- CoC
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Eunuch
  use {"tpope/vim-eunuch"}

  -- startify
  use {"mhinz/vim-startify"}

  -- lexima
  use {"cohama/lexima.vim"}

  -- catpuccin color scheme
  use { "catppuccin/nvim", as = "catppuccin" }
end)

