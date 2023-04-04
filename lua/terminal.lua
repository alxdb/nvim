vim.api.nvim_create_autocmd('TermOpen', { command = 'setlocal nonumber norelativenumber' })
vim.api.nvim_create_autocmd('TermOpen', { command = 'startinsert' })

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
