-- Синтаксис
return {
	"nvim-treesitter/nvim-treesitter", -- Подсветка синтаксиса

	config = function()
		require("nvim-treesitter").setup({
			auto_install = true,
			autotag = { enable = true },
		})
	end,
}
