local go = vim.o
local g = vim.g          -- global variables
local opt = vim.opt
local api = vim.api

go.mouse = 'a'
go.number = true
go.encoding = 'UTF-8'

opt.termguicolors = true  

-- Use spaceces instead of tabs
opt.expandtab = true
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces

-- Remove italic highlights
g.nord_italic = false

-- Which key
g.mapleader = ' '
go.timeoutlen = 0

vim.cmd [[colorscheme nord]]

-- require('nord').set()
