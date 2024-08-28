local keymap = vim.keymap

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	config = config,
	keys = {
		keymap.set("n", "<leader>ff", ":Telescope find_files<CR>"),
		keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>"),
		keymap.set("n", "<leader><leader>", ":Telescope <CR>"),
		keymap.set("n", "<leader>fb", ":Telescope buffers<CR>"),
		keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>"),
		keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
	},
}
