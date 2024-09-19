-- Highlight on yank or deletion
vim.cmd.autocmd("TextYankPost * silent! lua vim.highlight.on_yank {higroup='Visual', timeout=200}")
