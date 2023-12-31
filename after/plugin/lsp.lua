local lsp_zero = require('lsp-zero')

lsp_zero.preset('recommended')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})

	local opts = {buffer = bufnr, remap = false}

    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, { buffer = bufnr, remap = false, desc = 'Go to definition' })
    vim.keymap.set('n', '<leader>lr', function() vim.lsp.buf.rename() end, { buffer = bufnr, remap = false, desc = 'Rename item under cursor' })

    local function quickfix()
        vim.lsp.buf.code_action()
    end

    vim.keymap.set('n', '<leader>lf', quickfix, { buffer = bufnr, remap = false, desc = 'Quick fix diagnostic under cursor' })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here 
	-- with the ones you want to install
	ensure_installed = {
		'tsserver',
		'rust_analyzer',
		'eslint',
		'lua_ls',
		'gopls',
		'clangd',
	},
	handlers = {
		lsp_zero.default_setup,
	},
})
