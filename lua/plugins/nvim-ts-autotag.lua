return {
	"windwp/nvim-ts-autotag",
	event = "InsertEnter",
	opts = {},

	config = function()
		require("nvim-ts-autotag").setup({
			enable_close = true, -- Auto close tags
			enable_rename = true, -- Auto rename pairs of tags
			enable_close_on_slash = false, -- Auto close on trailing </
		})
	end,
}
