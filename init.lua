vim.o.nu = true
vim.o.rnu = true
vim.o.signcolumn = 'number'
vim.o.path = '**'
vim.g.mapleader = ' '

require('plugins')
require('theme')
require('treesitter')
require('mappings')
require('lsp')
require('completion')
