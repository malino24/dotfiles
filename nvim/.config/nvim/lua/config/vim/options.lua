vim.opt.expandtab = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false
vim.opt.textwidth = 0
vim.opt.linebreak = false

vim.opt.termguicolors = true

if package.loaded["lualine"] then
    vim.opt.showmode = false
end
