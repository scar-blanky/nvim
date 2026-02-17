function Color(theme)
    theme = theme or 'Princess'

    if theme == 'Princess' then
        vim.cmd [[colorscheme catppuccin-mocha]]

        vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })

        vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeCursorLine', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeStatusLine', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeStatusLineNC', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeRootName', { fg = '#DF89F0', bold = true })
        vim.api.nvim_set_hl(0, 'NeoTreeDotFile', { fg = '#9AACAC' })
        vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg = '#F5DFAB' })
        vim.api.nvim_set_hl(0, 'NeoTreeFileStats', { fg = '#A1C2F0' })
        vim.api.nvim_set_hl(0, 'NeoTreeFileStatsHeader', { fg = '#E3A1F0' })

        vim.api.nvim_set_hl(0, 'LineNR', { fg = '#F0DDD3' })

        vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'StatusLineTerm', { bg = 'none' })
    else
        error('Unknown theme: "' .. theme .. '"!')
    end
end

Color()
