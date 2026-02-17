return {
    'catppuccin/nvim',
    lazy = false,
    priority = 1001,
    name = 'catppuccin',
    opts = {
        flavour = 'mocha',
        transparent_background = true,
        integrations = {
            cmp = true,
            lsp_trouble = true,
            mason = true,
            native_lsp = {
                enabled = true,
                underlines = {
                    errors = { 'undercurl' },
                    hints = { 'undercurl' },
                    warnings = { 'undercurl' },
                    information = { 'undercurl' },
                },
            },
            telescope = true,
            treesitter = true,
            treesitter_context = true,
            which_key = true,
        },
    },
}
