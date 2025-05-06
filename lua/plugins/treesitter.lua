return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"lua",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"svelte",
				-- "go",
				"json",
				"php_only",
			},
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "blade" }, -- Ensure Blade syntax is highlighted
			},
			indent = { enable = true },
			auto_install = true,
      filter = {
        dotfiels = false
      }
		})
	end,
}
