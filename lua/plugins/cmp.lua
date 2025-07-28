return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp", -- LSP-источник
		"hrsh7th/cmp-buffer", -- Дополнение из буфера
		"hrsh7th/cmp-path", -- Дополнение путей
		"L3MON4D3/LuaSnip", -- Сниппеты
		"saadparwaiz1/cmp_luasnip", -- Интеграция сниппетов
		"onsails/lspkind.nvim",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(), -- Показать дополнения
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Подтвердить выбор
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" }, -- LSP-источник
				{ name = "luasnip" }, -- Сниппеты
				{ name = "buffer" }, -- Текущий буфер
				{ name = "path" }, -- Пути к файлам
				{ name = "codeium" }, -- Codeium
			}),
			-- formatting = {
			--   format = require('lspkind').cmp_format({
			--       mode = "symbol",
			--       maxwidth = 50,
			--       ellipsis_char = '...',
			--       symbol_map = { Codeium = "", }
			--   })
			-- }
		})
	end,
}
