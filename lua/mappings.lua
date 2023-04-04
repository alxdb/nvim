local builtin = require('telescope.builtin')

-- telescope commands
local function project_files()
  vim.fn.system('git rev-parse --is-inside-work-tree')
  if vim.v.shell_error == 0 then
    builtin.git_files()
  else
    builtin.find_files()
  end
end

vim.keymap.set('n', '<leader>ff', project_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- common commands
vim.keymap.set('n', '<leader>bn', ':bn<CR>', {})
vim.keymap.set('n', '<leader>bp', ':bp<CR>', {})
vim.keymap.set('n', '<leader>bd', ':bd<CR>', {})
vim.keymap.set('n', '<leader>fs', ':w<CR>', {})
