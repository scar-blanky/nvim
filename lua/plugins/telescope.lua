return {
    'nvim-telescope/telescope.nvim',
    branch = 'master',
    cmd = 'Telescope',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
        'BurntSushi/ripgrep',
    },
    keys = {
        {
            '<leader>ff',
            '<cmd>Telescope find_files<cr>',
            desc = '',
        },
        {
            '<leader>fg',
            '<cmd>Telescope live_grep<cr>',
            desc = '',
        },
        {
            '<leader>fb',
            '<cmd>Telescope buffers<cr>',
            desc = '',
        },
        {
            '<leader>fh',
            '<cmd>Telescope help_tags<cr>',
            desc = '',
        },
    },
}
