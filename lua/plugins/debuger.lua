return {
	-- for DAP support
	{
		"mfussenegger/nvim-dap",
		dependencies = { "leoluz/nvim-dap-go" },
		config = function()
			require("dap-go").setup()
		end,
	},
	{ "nvim-neotest/nvim-nio" },
	{
		"rcarriga/nvim-dap-ui",
		config = function()
			require("dapui").setup()
		end,
	},
	{
		"akinsho/flutter-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "dart" },
				highlight = { enable = true },
			})

			local dap = require("dap")
			dap.adapters.dart = {
				type = "executable",
				command = "dart",
				args = { "debug_adapter" },
			}

			-- FLUTTER
			require("flutter-tools").setup({
				-- (uncomment below line for windows only)
				flutter_path = "C:\\Users\\Dell\\AppData\\Local\\flutter\\bin\\flutter",
				dart_sdk_path = "C:\\Users\\Dell\\AppData\\Local\\flutter\\bin\\cache\\dart-sdk",
				lsp = {
					on_attach = function(client, bufnr)
						require("lspconfig").dartls.setup({})
					end,
				},
				debugger = {
					enabled = false,
					run_via_dap = false,
					register_configurations = function(_)
						require("dap").adapters.dart = {
							type = "executable",
							command = vim.fn.stdpath("data") .. "\\mason\\bin\\dart-debug-adapter",
							args = { "flutter" },
						}
					end,
				},
				dev_log = {
					-- toggle it when you run without DAP
					enabled = false,
					open_cmd = "tabedit",
				},
			})

			-- KOTLIN
			dap.adapters.kotlin = {
				type = "executable",
				command = "java",
				args = { "-jar", "/path/to/kotlin-debug-adapter.jar" },
			}

			dap.configurations.kotlin = {
				{
					type = "kotlin",
					request = "launch",
					name = "Launch Kotlin App",
					program = "${file}",
				},
			}

			vim.api.nvim_set_keymap("n", "<leader>fr", ":FlutterRun<CR>", { noremap = true, silent = true })
		end,
	},
}
