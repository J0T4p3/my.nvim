local k = vim.keymap

local opts = { noremap = true, silent = true }

-- Windows navigation
k.set("n", "wh", "<C-w>h", opts)
k.set("n", "wj", "<C-w>j", opts)
k.set("n", "wk", "<C-w>k", opts)
k.set("n", "wl", "<C-w>l", opts)

-- Windows control
k.set("n", "wv", "<C-w>v", opts) -- Split window vertically
k.set("n", "ws", "<C-w>s", opts) -- Split window horizontally
k.set("n", "wq", "<C-w>q", opts) -- Close current window

-- Identing multiple lines
k.set("v", "<", "<gv", { noremap = false })
k.set("v", ">", ">gv", { noremap = false })

-- Open file explorer
k.set("n", "<leader>ee", "<cmd>Ex<CR>", opts)
