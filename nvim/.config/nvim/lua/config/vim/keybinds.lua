-- Exit insert mode cleanly
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("i", "<A-j>", "<Esc>")
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Navigate vim panes better
vim.keymap.set("n", "<C-h>", "<Cmd>wincmd h<CR>")
vim.keymap.set("n", "<C-j>", "<Cmd>wincmd j<CR>")
vim.keymap.set("n", "<C-k>", "<Cmd>wincmd k<CR>")
vim.keymap.set("n", "<C-l>", "<Cmd>wincmd l<CR>")

-- vim.keymap.set("n", "<C-Left>", "<Cmd>wincmd h<CR>")
-- vim.keymap.set("n", "<C-Down>", "<Cmd>wincmd j<CR>")
-- vim.keymap.set("n", "<C-Up>", "<Cmd>wincmd k<CR>")
-- vim.keymap.set("n", "<C-Right>", "<Cmd>wincmd l<CR>")

-- Switch around lines
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")

vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==")

