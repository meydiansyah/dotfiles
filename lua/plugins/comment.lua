return {
    'numToStr/Comment.nvim',
    opts = {
      toggler = { line = '<A-/>', block = 'gcb' },
      opleader = { line = '<A-/>', block = 'gb' },
    },
    lazy = false,
    config = function ()
        require("Comment").setup({})

        -- vim.keymap.set("v", "<C-/>", "gcb", {})
    end
}
