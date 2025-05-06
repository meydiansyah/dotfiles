return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({})

		vim.keymap.set("n", "<leader><space><Tab>", ":BufferLinePick<cr>")
		vim.keymap.set("n", "<leader><space>x", ":BufferLinePickClose<cr>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>e", ":BufferLineCycleNext<cr>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>q", ":BufferLineCyclePrev<cr>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>w", ":bdelete!<cr>", { noremap = true, silent = true })
	end,
}
