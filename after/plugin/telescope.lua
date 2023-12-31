local builtin = require('telescope.builtin')
local telescope = require('telescope')

vim.keymap.set('n', '<leader>ff', function() builtin.find_files({hidden=true}) end, { desc = 'Fuzzy find files' })
vim.keymap.set('n', '<leader>fg', function() builtin.git_files({hidden=true}) end, { desc = 'Fuzzy find files in git project' })
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = 'Fuzzy find references' })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Fuzzy find diagnostics' })
vim.keymap.set('n', '<leader>?', ':Telescope keymaps<CR>', { desc = 'Open my keymaps in Telescope' })
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("grep> ")})
end)
vim.keymap.set("n", "<leader>ft", ':TodoTelescope<CR>', { desc = 'Show my TODOs in Telescope' })
