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
k.set("v", "H", "<gv", { noremap = false })
k.set("v", "L", ">gv", { noremap = false })
k.set("v", "J", ":m '>+1<CR>gv=gv",{ noremap = false })
k.set("v", "K", ":m '<-2<CR>gv=gv",{ noremap = false })

-- Open file explorer
k.set("n", "<leader>ee", "<cmd>Ex<CR>", opts)

-- Buffer navigation and Text mobility
k.set("n", "J", "mzJ`z") -- Upper the line bellow without changing cursor position
k.set("n", "<C-d>", "<C-d>zz") -- Do a half scroll without changing cursor position
k.set("n", "<C-u>", "<C-u>zz")
k.set("n", "n", "nzzzv") -- Walk trougth searched text 
k.set("n", "N", "Nzzzv")
k.set("x", "<leader>p", [["_dP]]) -- Paste yanked text into highlited text without touching the register
k.set({"n", "v"}, "<leader>d", [["_d]]) -- Delete to void
k.set("i", "<C-c>", "<Esc>")

-- System's register integration
k.set({"n", "v"}, "<leader>y", [["+y]])
k.set("n", "<leader>Y", [["+Y]])


