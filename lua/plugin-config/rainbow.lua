vim.api.nvim_set_hl(0, 'TSRainbowRed', {fg = '#DB4D6D'})
vim.api.nvim_set_hl(0, 'TSRainbowYellow', {fg = '#FED71A'})
vim.api.nvim_set_hl(0, 'TSRainbowBlue', {fg = '#63BBD0'})
vim.api.nvim_set_hl(0, 'TSRainbowOrange', {fg = '#FFB11B'})
vim.api.nvim_set_hl(0, 'TSRainbowGreen', {fg = '#61AC85'})

require("nvim-treesitter.configs").setup {
  rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = {},
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
    -- Highlight the entire buffer all at once
    strategy = require 'ts-rainbow.strategy.global',
    -- Do not enable for files with more than n lines
    max_file_lines = 3000,

    hlgroups = {
            'TSRainbowYellow',
            'TSRainbowRed',
            'TSRainbowBlue',
            'TSRainbowOrange',
            'TSRainbowGreen',
    }
  }
}
