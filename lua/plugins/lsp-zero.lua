return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x',
    config = function ()
        require('lsp-zero').setup({
            ui = {
                float_border = 'rounded',
                sign_text = {
                    error = '✗',
                    warn = '▲',
                    hint = '➜',
                    info = '»',
                },
            }
        })
    end
}
