return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				-- "lua",
				"vim",
				"vimdoc",
				"python",
				"javascript",
				"html",
				"css",
				"rust",
			},
            auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
