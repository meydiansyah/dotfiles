return {
    'phaazon/hop.nvim',
    opts = {},
    config = function()
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

        vim.keymap.set("n", "f", ":HopLineStart <CR>")
        vim.keymap.set("n", "F", ":HopWord <CR>")
    end
}
