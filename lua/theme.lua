local onedark = require('onedark')
local lualine = require('lualine')

vim.o.termguicolors = true

onedark.setup {
  style = 'darker',
  transparent = true,
  code_style = {
    comments = 'italic',
    keywords = 'italic',
    strings = 'none',
    functions = 'bold',
    variables = 'bold',
  },
  colors = { fg = '#bcc4d1' }
}
onedark.load()

lualine.setup {
  options = {
    theme = 'onedark',
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
