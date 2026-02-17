return {
    'nvim-neo-tree/neo-tree.nvim',
    lazy = false,
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    },
    opts = {
        close_if_last_window = true,
        filesystem = {
            hijack_netrw_behavior = 'open_current',
            window = {
                open = 'current',
            },
        },
    },
}
