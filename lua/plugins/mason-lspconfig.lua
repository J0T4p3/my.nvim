local opts = {
	ensure_installed = {
		"efm",
		"lua_ls",
		"pyright",
		"gopls",
	},
	automatic_installation = true,
}

return {
	"Williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = {
		"williamboman/mason.nvim",
	},
}
