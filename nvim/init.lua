vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/Mofiqul/dracula.nvim.git",
  "https://github.com/nvim-treesitter/nvim-treesitter.git",
  "https://github.com/ray-x/aurora",
  "https://github.com/xero/sourcerer.vim",
  "https://github.com/thedenisnikulin/vim-cyberpunk"
  --"https://github.com/rockyzhang24/arctic.nvim/tree/v2"
})

--vim.cmd[[colorscheme dracula]]
--vim.cmd[[colorscheme artic]]
--vim.cmd[[colorscheme aurora]]
--vim.cmd[[colorscheme sourcerer]]
vim.cmd[[colorscheme cyberpunk]]
