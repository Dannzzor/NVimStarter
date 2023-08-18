-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","

local opt = vim.opt

opt.wrap = true -- Enable line wrap
opt.cursorline = true -- Enable cursor line
opt.cursorcolumn = true -- Enable cursor column line
opt.title = true -- Show file name as window title
--opt.spell = true -- Enable spell checking
