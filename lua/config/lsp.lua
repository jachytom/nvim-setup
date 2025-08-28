-- Set up how errors/warnings are shown
vim.diagnostic.config({
	virtual_text = true,
	float = { border = "rounded" },
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },    -- let server know that "vim" is a valid global
            },
        },
    },
})

-- Autocommand: runs whenever *any* LSP attaches to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local map = function(mode, lhs, rhs)
			vim.keymap.set(mode, lhs, rhs, { buffer = event.buf, silent = true })
		end

		-- Useful LSP actions bound to keys
		map("n", "K", vim.lsp.buf.hover)		-- shows docs for symbol under cursor
		map("n", "gd", vim.lsp.buf.definition)		-- jump	 to definition
		map("n", "gr", vim.lsp.buf.references)		-- list all references
		map("n", "gi", vim.lsp.buf.implementation)	-- go to implementation

		-- Diagnostics navigation & display
		map("n", "gl", vim.diagnostic.open_float)	-- popup with error under cursor
		map("n", "[d", vim.diagnostic.goto_prev)	-- previous diagnostic
		map("n", "]d", vim.diagnostic.goto_next)	-- next diagnostic
	end,
})
