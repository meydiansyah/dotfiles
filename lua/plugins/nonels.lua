return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls") -- still uses `null-ls` namespace
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier, -- Example: Prettier for formatting
				null_ls.builtins.diagnostics.eslint_d, -- Example: ESLint for diagnostics
			},
		})
		vim.g["prettier#exec_cmd_async"] = 1
		vim.g["prettier#config#configFile"] = vim.fn.getcwd() .. "/.prettierrc"

		vim.keymap.set("n", "<leader>fm", function()
			vim.lsp.buf.format({ timeout_ms = 5000 }) -- Adjust as needed
		end)
	end,
}
