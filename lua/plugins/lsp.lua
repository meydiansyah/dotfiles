return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"cssls",
					"html",
					"emmet_ls",
					"ts_ls"
				},
			})
		end,
	},
    {
      "themaxmarchuk/tailwindcss-colors.nvim",
      module = "tailwindcss-colors",
      config = function ()
        require("tailwindcss-colors").setup()
      end
    },
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local lsp_capabilities = vim.lsp.protocol.make_client_capabilities()
			lsp_capabilities.textDocument.completion.completionItem.snippetSupport = true

			lspconfig.emmet_ls.setup({
				capabilities = lsp_capabilities,
				filetypes = {
					"css",
					"html",
					"javascript",
					"javascriptreact",
					"sass",
					"scss",
					"typescriptreact",
				},
				init_options = {
					html = {
						options = {
							-- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
							["bem.enabled"] = true,
						},
					},
				},
			})

			lspconfig.html.setup({
				capabilities = lsp_capabilities,
            })
			lspconfig.cssls.setup({
				capabilities = lsp_capabilities,
            })

			-- lsp lua
			lspconfig.lua_ls.setup({
				capabilities = lsp_capabilities,
				on_attach = function(client)
					client.server_capabilities.documentFormattingProvider = true
				end,
			})
			-- lsp javascript
			lspconfig.ts_ls.setup({
				capabilities = lsp_capabilities,
				on_attach = function(client)
					client.server_capabilities.documentFormattingProvider = true
				end,
			})

			local opts = { noremap = true, silent = true }

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

            -- code actions
            vim.keymap.set("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)

			vim.keymap.set("n", "<leader><A-n>", vim.diagnostic.goto_prev, opts)
			vim.keymap.set("n", "<leader><A-N>", vim.diagnostic.goto_next, opts)
			vim.keymap.set("n", "<leader><leader>rn", vim.lsp.buf.rename, opts)

			vim.keymap.set("n", "<space><Tab>", vim.lsp.buf.signature_help, opts)
			vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
			vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
			vim.keymap.set("n", "<leader>wl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, opts)
			vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			-- vim.keymap.set("n", "<leader>E", vim.diagnostic.open_float, opts)
			-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
		end,
	},
}
