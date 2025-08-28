return {
	{ "neovim/nvim-lspconfig" },
	{ "mason-org/mason.nvim", opts = {}, },
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
		opts = {
			ensure_installed = { "lua_ls", "pyright", "bashls", "clangd" },
			automatic_enable = true,
		},
	},
}
