local config = function()
    local ts = require('nvim-treesitter.configs')

    ts.setup( {
        indent = {
            enable = true
        },
        autotag = { enable = true },

        ensure_installed = { 
            "python", 
            "html",
            "javascript",
            "go", 
            "lua", 
            "vim", 
            "vimdoc", 
            "query", 
            "markdown", 
            "markdown_inline" 
        },

        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        -- ignore_install = { "javascript" },

        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
    } )
end

return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    config = config,
}
