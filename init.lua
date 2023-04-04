vim.o.nu = true
vim.o.rnu = true
vim.o.signcolumn = 'number'
vim.o.path = '**'
vim.o.et = true
vim.o.sw = 2
vim.o.tw = 2
vim.g.mapleader = ' '

require('plugins')
require('theme')
require('treesitter')
require('mappings')
require('lsp')
require('completion')
