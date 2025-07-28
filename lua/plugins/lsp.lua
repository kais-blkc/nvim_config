return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true, -- Автоустановка LSP при открытии файлов
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				automatic_installation = true,
			})

			-- vim diagnostic
			vim.diagnostic.config({
				virtual_text = true, -- Показывает ошибки прямо в коде
				signs = true, -- Значки на полях
				update_in_insert = true, -- Обновлять в режиме вставки
				underline = true, -- Подчеркивать ошибки
				severity_sort = true,
			})

			-- Code actions
			vim.keymap.set("n", "<leader>ca", function()
				vim.lsp.buf.code_action({
					context = { only = { "source", "source.organizeImports", "source.fixAll" } },
				})
			end, { buffer = 0, desc = "LSP: Source/Organize" })
		end,
	},
}
