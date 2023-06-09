vim.g.mapleader = " "
--[[ vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) ]]
vim.keymap.set("n", "<leader>pv", ":Ex<Enter>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--Remaped shift eneter to start new line
vim.keymap.set('i', '<S-Enter>', '<Esc>o')
--Words falling animation
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

--[[ vim.opt.cursorline = true ]]
--[[ vim.opt.winblend = 0 ]]
--[[ vim.opt.wildoptions = 'pum' ]]
--[[ vim.opt.pumblend = 5 ]]
-- Enable cursorline and set its highlighting
vim.opt.cursorline = true
vim.cmd('highlight CursorLine guibg=none gui=underline')
-- Yanking to system clipboard

vim.keymap.set("n", '<C-c>', '"+yy')

-- Automatically update the highlighting when the colorscheme changes
vim.cmd([[autocmd ColorScheme * highlight CursorLine guibg=none gui=underline]])
-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]
