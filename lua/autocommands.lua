-- automatically recompile packer plugins on saving plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- open chadtree on startup
vim.cmd([[
  autocmd VimEnter * CHADopen
]])

