require('nvim-treesitter.configs').setup {
  ensure_installed = { 'lua', 'vim', 'c', 'cpp', 'rust' },
  sync_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
