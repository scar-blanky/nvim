return {
    'neovim/nvim-lspconfig',
    lazy = false,
    dependencies = {
        { 'mason-org/mason.nvim', opts = { ui = { border = 'rounded' } } },
        { 'mason-org/mason-lspconfig.nvim', opts = {} },
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
        local cmp = require('cmp')
        local cmp_lsp = require('cmp_nvim_lsp')
        local capabilities = vim.tbl_deep_extend(
            'force',
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities()
        )

        vim.lsp.config('*', {
            capabilities = capabilities,
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            -- snippet = {
            --     expand = function(args)
            --         require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            --     end,
            -- },
            mapping = cmp.mapping.preset.insert({
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-m>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'copilot', group_index = 2 },
                { name = 'nvim_lsp' },
                -- { name = 'luasnip' }, -- For luasnip users.
            }, {
                { name = 'buffer' },
            })
        })

        vim.diagnostic.config({
            float = {
                focusable = false,
                style = 'minimal',
                border = 'rounded',
                header = '',
                prefix = '',
            },
        })
    end,
}
