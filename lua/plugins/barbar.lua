local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<Leader>fp', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Leader>ff', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<Leader>fmp', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<Leader>fmf', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<Leader>f1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<Leader>f2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<Leader>f3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<Leader>f4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<Leader>f5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<Leader>f6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<Leader>f7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<Leader>f8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<Leader>f9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<Leader>fl', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<Leader>fp', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<Leader>fc', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
