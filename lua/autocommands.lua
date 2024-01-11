-- automatically recompile packer plugins on saving plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd([[
  augroup text_editing
    autocmd!
    autocmd VimEnter *.md :ZenMode
    autocmd VimEnter *.md :SoftWrapMode
    autocmd VimEnter *.typ :ZenMode
    autocmd VimEnter *.typ :SoftWrapMode
    autocmd VimEnter *.typ :TypstWatch
    autocmd VimEnter *.tex :ZenMode
    autocmd VimEnter *.tex :SoftWrapMode
    autocmd VimEnter *.tex :VimtexCompile
  augroup end
]])
