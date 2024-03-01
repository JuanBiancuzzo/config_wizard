return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
                icons_enable = true,
                component_separators = "|",
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = {
                    { "mode", separator = { left = ' ' }, right_padding = 2 },
                },
                lualine_b = { "filename", 'branch', "diff" },
                lualine_c = {{
                    require("noice").api.statusline.mode.get,
                    cond = require("noice").api.statusline.mode.has,
                    color = { fg = "#ff9e64" },
                    -- left_padding = 2,
                }},
                lualine_y = { 'filetype', 'progress' },
                lualine_z = {
                    { 'location', separator = { right = ' ' }, left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = {
                    { "filename", separator = { left = ' ' }, right_padding = 2 },
                },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {
                    { 'location', separator = { right = ' ' }, left_padding = 2 },
                },
            },
            tabline = {},
            extensions = {},
		})
	end,
}
