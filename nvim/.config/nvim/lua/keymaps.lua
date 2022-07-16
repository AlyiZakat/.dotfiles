local map = vim.api.nvim_set_keymap

map('i', 'jk', '<Esc>', {noremap = true})
map("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
map("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
map("n", '<leader>n', ":NvimTreeFocus<CR>", {})
map("n", '<C-n>', ":NvimTreeCollapse<CR>", {})
map("n", '<C-t>', ":NvimTreeToggle<CR>", {})
map("n", '<C-f>', ":NvimTreeFindFile<CR>", {})
map("n", ']b', ":BufferLineCycleNext<CR>", {})
map("n", '[b', ":BufferLineCyclePrev<CR>", {})
