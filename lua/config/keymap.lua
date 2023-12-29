-- note that some keymaps may be configured under lua/plugins
-- as well since some plugins are more extensive.

-- taken from https://blog.devgenius.io/create-custom-keymaps-in-neovim-with-lua-d1167de0f2c2
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- config stuff
map("n", "<Leader>zr", ":source ~/.config/nvim/init.lua<CR>", { desc = "Reload the neovim configuration" })
map("n", "<Leader>ze", ":edit ~/.config/nvim/init.lua<CR>", { desc = "Edit the neovim configuration" })

-- often used commands
map("n", "<Leader>w", ":w<CR>", { desc = "Save" })
map("n", "<Leader>q", ":q<CR>", { desc = "Close the current buffer"})
map("n", "<Leader>qq", ":qa<CR>", { desc = "Quit all" })
map("n", "<Leader>wq", ":wq<CR>", { desc = "Write and quit" })

-- files and directories
map("n", "<Leader>ft", ":CHADopen<CR>", { desc = "Toggle Neotree", silent = true})
map("n", "<Leader>fn", ":edit ", { desc = "Create a new file, you have to provide the filepath" })
map("n", "<Leader>fnd", ":Mkdir ", { desc = "Create a new directory" })

-- terminals
map("n", "<Leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Toggle a horizontal terminal" })
map("n", "<Leader>tv", ":ToggleTerm size=80 direction=vertical<CR>", { desc = "Toggle a vertical terminal" })
map("n", "<Leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Toggle a floating terminal" })

-- splitting screens
map("n", "<Leader>xv", "v", { desc = "Split the window vertically" })
map("n", "<Leader>xh", "s", { desc = "Split the window horizontally" })

-- working with latex
map("n", "<Leader>vc", ":VimtexCompile<CR>", { desc = "Compile the current tex file" })
map("n", "<Leader>vl", ":VimtexClean<CR>", { desc = "Clean the local files" })

-- telescope bindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>FF', builtin.find_files, {})
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, {})
