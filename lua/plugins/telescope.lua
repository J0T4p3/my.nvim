local keymap = vim.keymap

local config = function ()
   local telescope = require('telescope')
   telescope.setup({
       defaults = {
            mappings = {
                    i = {
                        ['<C-j>'] = 'move_selection_next',
                        ['<C-k>'] = 'move_selection_previous',
                },
            },
       },
   })
end
return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = config,
}
