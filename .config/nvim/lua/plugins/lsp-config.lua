return {
	{
		"williamboman/mason.nvim",
        priority = 300,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
        priority = 200,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"ast-grep", -- c, c++, lua, c#, html, css, javascript, typescript, python, rust
					"clangd",
					"dockerls", -- docker
					"htmx-lsp", -- hmtx
					"bibtex-tidy", -- latex
					"alex", -- markdown
					"sqlfmt", -- sql
					"hydra-lsp", -- yaml
					"zls", -- zig
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
        priority = 100,
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.clangd.setup({})
			lspconfig.ast_grep.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.htmx.setup({})
			-- lspconfig.bibtex_tidy.setup({})
			-- lspconfig.alex.setup({})
			lspconfig.sqls.setup({})
			lspconfig.hydra_lsp.setup({})
			lspconfig.zls.setup({})

			vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, opts)
		end,
	},
}
