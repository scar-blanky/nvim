local colors = {
    MIKA = '#FCEFF6',
    KOHARU = '#E66585',
    SILVER = '#BFC0DE',
    AZUSA = '#7B5C9C',
    BURNT_ORANGE = '#F7771B',
    ALICE = '#7DDEF8',
    KEI = '#EB7DDC',
}

local mode = {
    function ()
        local mode_map = {
            n = '( > ▽<)൬༉ Normal',
            i = '꒰ঌ(⸝⸝ ↀ ᯅ ↀ⸝⸝)໒꒱Insert',
            v = 'ᓀ ᓂ Visual',
            V = 'ᓀ ᓂ Visual Line',
            [' '] = 'ᓀ ᓂ Visual Block',
            R = '( ◺˰◿ ) Replace',
            c = 'KEI',
            t = 'AL-1S',
        }

        return mode_map[vim.fn.mode()] or vim.fn.mode()
    end,
    color = function ()
        local fg_color_map = {
            n = '#7D7DF0',
            i = 'black',
            v = colors.AZUSA,
            V = colors.AZUSA,
            [' '] = colors.AZUSA,
            c = 'white',
            t = 'white',
        }
        local bg_color_map = {
            n = colors.MIKA,
            i = colors.KOHARU,
            v = colors.SILVER,
            V = colors.SILVER,
            [' '] = colors.SILVER,
            R = colors.BURNT_ORANGE,
            c = colors.KEI,
            t = colors.ALICE,
        }

        return { fg = fg_color_map[vim.fn.mode()], bg = bg_color_map[vim.fn.mode()] or 'red' }
    end,
    separator = { left = '', right = '' },
    right_padding = 2,
}

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    priority = 1000,
    opts = {
        options = {
            theme = {
                normal = {
                    a = { fg = 'white', bg = 'none' },
                    b = { fg = 'white', bg = 'none' },
                    c = { fg = 'white', bg = 'none' },
                    x = { fg = 'white', bg = 'none' },
                    y = { fg = 'white', bg = 'none' },
                    z = { fg = 'white', bg = 'none' },
                },

                inactive = {
                    a = { bg = 'none' },
                    z = { bg = 'none' },
                },
            },
            component_separators = '',
        },
        sections = {
            lualine_a = { mode },
            lualine_b = {},
            lualine_c = { 'branch', 'filename' },
            lualine_x = { 'filetype', 'lsp_status' },
            lualine_y = { 'progress', 'selectioncount' },
            lualine_z = { 'location' },
        },
        inactive_sections = {
            lualine_a = { 'filename' },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { 'location' },
        },
        tabline = {},
        extensions = {},
    },
}
