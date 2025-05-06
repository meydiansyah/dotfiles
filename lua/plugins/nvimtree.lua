return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        side = "right",
        float = {
          enable = true,
          open_win_config = function()
            local width = 50
            local height = 20

            -- Try to get actual content height if nvim-tree is already rendered
            local bufnr = vim.api.nvim_get_current_buf()
            if vim.bo[bufnr].filetype == "NvimTree" then
              local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
              height = math.min(#lines + 4, vim.o.lines - 4)
            end

            return {
              relative = "editor",
              border = "rounded",
              width = width,
              height = height,
              row = math.floor((vim.o.lines - height) / 2),
              col = math.floor((vim.o.columns - width) / 2),
            }
          end,
        },
        width = 40,
      },
      diagnostics = {
        enable = true
      },
      modified = {
        enable = true
      },
      renderer = {
        highlight_git = true,
        highlight_opened_files = "all",
        highlight_hidden = "all",

      },
      filters = {
        dotfiles = false,
        git_clean = false,
      },
      git = {
        enable = true,
        ignore = false, -- don't hide .gitignore’d files
      },
    })

    -- toggle file tree
    vim.keymap.set("n", "<A-b>", "<cmd> NvimTreeToggle <CR>", {})
  end,
}
