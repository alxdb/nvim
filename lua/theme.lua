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
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}
