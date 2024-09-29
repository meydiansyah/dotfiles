return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- require("lualine").setup({
			--     options = {
			--         theme = "OceanicNext",
			--         disabled_filetypes = { "NvimTree" },
			--         section_separators = { "", "" },
			--         component_separators = { "", "" },
			--     },
			--     -- sections = {
			--     -- 	lualine_a = { "mode" },
			--     -- 	lualine_b = { "branch" },
			--     -- 	lualine_c = { "filename" },
			--     -- 	lualine_x = { "encoding", "fileformat", "filetype" },
			--     -- 	lualine_y = { "progress" },
			--     -- 	lualine_z = { "location", "%Y-%m-%d %H:%M:%S" },
			--     -- },
			--     tabline = {},
			--     extensions = {},
			-- })

			local sections = {
				lualine_y = { "location" },
				lualine_x = { "filetype" },
				lualine_z = { "ctime" },
			}

            -- Bubbles config for lualine
            -- Author: lokesh-krishna
            -- MIT license, see LICENSE for more details.

            -- stylua: ignore
            local colors = {
                blue   = '#5486c0',
                cyan   = '#b77eb8',
                -- cyan   = '#50a5a4',
                black  = '#121c21',
                white  = '#ffffff',
                red    = '#e44754',
                violet = '#b77eb8',
                grey   = '#303030',
            }

			local bubbles_theme = {
				normal = {
					a = { fg = colors.black, bg = colors.violet },
					b = { fg = colors.white, bg = colors.grey },
					c = { fg = colors.white },
				},

				insert = { a = { fg = colors.black, bg = colors.blue } },
				visual = { a = { fg = colors.black, bg = colors.cyan } },
				replace = { a = { fg = colors.black, bg = colors.red } },

				inactive = {
					a = { fg = colors.white, bg = colors.black },
					b = { fg = colors.white, bg = colors.black },
					c = { fg = colors.white },
				},
			}

			require("lualine").setup({
				options = {
					-- theme = bubbles_theme,
					theme = "onedark",
					component_separators = "",
					section_separators = { left = "", right = "" },
					disabled_filetypes = { "NvimTree" },
				},
				sections = {
					lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
					lualine_b = { "filename", "branch" },
					lualine_c = {
						"%=", --[[ add your center compoentnts here in place of this comment ]]
					},
					lualine_x = {},
					lualine_y = { "filetype", "location" },
					lualine_z = {
						{ "ctime", separator = { right = "" }, left_padding = 2 },
					},
				},
				inactive_sections = {
					lualine_a = { "filename" },
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "location" },
				},
				tabline = {},
				extensions = {},
			})

			-- require("lualine").setup({
			-- 	options = {
			-- 		icons_enabled = true,
			-- 		theme = "onedark",
			-- 		disabled_filetypes = { "NvimTree" },
			-- 		section_separators = { "", "" },
			-- 		component_separators = { "", "" },
			-- 		ignore_focus = {},
			-- 		always_divide_middle = true,
			-- 		globalstatus = false,
			-- 		refresh = {
			-- 			statusline = 1000,
			-- 			tabline = 1000,
			-- 			winbar = 1000,
			-- 		},
			-- 	},
			--
			-- 	tabline = {},
			-- 	winbar = {},
			-- 	inactive_winbar = {},
			-- 	extensions = {},
			-- })
		end,
	},
	{
		"archibate/lualine-time",
	},
}
