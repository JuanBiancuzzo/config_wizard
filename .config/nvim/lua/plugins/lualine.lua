local color = {
    rosewater = "#f5e0dc",
    flamingo = "#f2cdcd",
    pink = "#f5c2e7",
    mauve = "#cba6f7",
    red = "#f38ba8",
    maroon = "#eba0ac",
    peach = "#fab387",
    yellow = "#f9e2af",
    green = "#a6e3a1",
    teal = "#94e2d5",
    sky = "#89dceb",
    sapphire = "#74c7ec",
    blue = "#89b4fa",
    lavender = "#b4befe",
    text = "#cdd6f4",
    subtext1 = "#bac2de",
    subtext0 = "#a6adc8",
    overlay2 = "#9399b2",
    overlay1 = "#7f849c",
    overlay0 = "#6c7086",
    surface2 = "#585b70",
    surface1 = "#45475a",
    surface0 = "#313244",
    base = "#1e1e2e",
    mantle = "#181825",
    crust = "#11111b",
    black = "#080808",
}

local catppuccin_mocha_theme = {
    normal = {
        a = { fg = color.black, bg = color.pink, gui = "bold" },
        b = { fg = color.text, bg = color.surface0},
        c = { fg = color.text, bg = color.mantle},
        z = { fg = color.black, bg = color.blue},
    },
    insert = {
        a = { fg = color.black, bg = color.green, gui = "bold" },
        b = { fg = color.text, bg = color.surface0},
        c = { fg = color.text, bg = color.mantle},
        z = { fg = color.black, bg = color.blue},
    },
    visual = {
        a = { fg = color.black, bg = color.yellow, gui = "bold" },
        b = { fg = color.text, bg = color.surface0},
        c = { fg = color.text, bg = color.mantle},
        z = { fg = color.black, bg = color.blue},
    },
    replace = {
        a = { fg = color.black, bg = color.red, gui = "bold" },
        b = { fg = color.text, bg = color.surface0},
        c = { fg = color.text, bg = color.mantle},
        z = { fg = color.black, bg = color.blue},
    },
    command = {
        a = { fg = color.black, bg = color.peach, gui = "bold" },
        b = { fg = color.text, bg = color.surface0},
        c = { fg = color.text, bg = color.mantle},
        z = { fg = color.black, bg = color.blue},
    },
    inactive = {
        a = { fg = color.black, bg = color.surface2, gui = "bold" },
        b = { fg = color.text, bg = color.surface0},
        c = { fg = color.text, bg = color.mantle},
        z = { fg = color.black, bg = color.blue},
    },
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = catppuccin_mocha_theme,
                icons_enable = true,
                component_separators = "|",
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = {
                    { "mode", separator = { left = ' ' }, right_padding = 2 },
                },
                lualine_b = { "filename", 'branch', "diff" },
                lualine_c = {},
                lualine_x = { "encoding" },
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
