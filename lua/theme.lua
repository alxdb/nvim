local ayu = require('ayu')
local lualine = require('lualine')

vim.o.termguicolors = true

ayu.setup {
  mirage = false,
}
ayu.colorscheme()

lualine.setup {
  options = {
    theme = 'ayu',
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { { 'filename', path = 4 } },
    lualine_x = { 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}
