local k = vim.keymap

local opts = { noremap = true, silent = true }

-- Windows navigation
k.set("n", "<C-h>", "<C-w>h", opts)
k.set("n", "<C-j>", "<C-w>j", opts)
k.set("n", "<C-k>", "<C-w>k", opts)
k.set("n", "<C-l>", "<C-w>l", opts)

-- Windows control
k.set("n", "<leader>wv", "<C-w>v", opts) -- Split window vertically
k.set("n", "<leader>wh", "<C-w>s", opts) -- Split window horizontally
k.set("n", "<leader>w", "<C-w>q", opts) -- Close current window

-- Identing
k.set("v", "<", "<gv", { noremap = false })
k.set("v", ">", ">gv", { noremap = false })

