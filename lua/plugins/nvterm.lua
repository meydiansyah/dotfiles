return {
  "NvChad/nvterm",
  config = function ()
    require("nvterm").setup()

    -- ini terminal mode
    -- toggle floating terminal
    vim.keymap.set("t","<leader><space>i",function()
        require("nvterm.terminal").toggle "float"
    end,{})

    -- toggle terminal horizontal
    vim.keymap.set("t","<leader><space>h",function()
        require("nvterm.terminal").toggle "horizontal"
    end,{})

    -- toggle terminal vertical
    vim.keymap.set("t","<leader><space>v",function()
        require("nvterm.terminal").toggle "vertical"
    end,{})

    -- ini normal mode
    -- toggle floating terminal
    vim.keymap.set("n","<leader><space>i",function()
        require("nvterm.terminal").toggle "float"
    end,{})

    -- toggle terminal horizontal
    vim.keymap.set("n","<leader><space>h",function()
        require("nvterm.terminal").toggle "horizontal"
    end,{})

    -- toggle terminal vertical
    vim.keymap.set("n","<leader><space>v",function()
        require("nvterm.terminal").toggle "vertical"
    end,{})
  end,
}
