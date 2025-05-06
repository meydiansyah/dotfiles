-- return {
-- 	"nvim-pack/nvim-spectre",
-- 	--[[ keys = {
-- 		{
-- 			"<leader>fsr",
-- 			function()
-- 				require("spectre").open({
-- 					is_block_ui_break = true,
-- 					is_insert_mode = true,
-- 					is_close = false, -- close an exists instance of spectre and open new
-- 				})
-- 			end,
-- 			desc = "Search & Replace (Spectre)",
-- 		},
-- 	}, ]]
-- 	config = function()
-- 		require("spectre").setup({
-- 			default = {
-- 				is_regex = false,
-- 			},
-- 			mapping = {
-- 				["toggle_regex"] = "<leader>tr", -- 👈 your custom key
-- 			},
-- 		})
-- 		vim.keymap.set("n", "<leader>fsr", function()
-- 			require("spectre").open()
-- 		end, { desc = "Open Spectre" })
-- 	end,
-- }

return {
	"nvim-pack/nvim-spectre",
	config = function()
		require("spectre").setup({
			default = {
				is_regex = false,
			},
			mapping = {
				["toggle_regex"] = {
					map = "<leader>tr",
					cmd = "<cmd>lua require('spectre.state').toggle_regex()<CR>",
					desc = "Toggle regex",
				},
			},
		})
		vim.keymap.set("n", "<leader>sr", function()
			require("spectre").open()
		end, { desc = "Open Spectre" })
	end,
}
