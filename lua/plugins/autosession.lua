return {
	"rmagatti/auto-session",
	lazy = false,

	---enables autocomplete for opts
	---@module "auto-session"
	---@type AutoSession.Config

	config = function()
		vim.o.sessionoptions = "buffers,curdir,tabpages,winsize,help,globals"

		require("auto-session").setup({
			log_level = "error",
			enabled = true, -- Enables/disables auto creating, saving and restoring
			auto_save = true, -- Enables/disables auto saving session on exit
			auto_restore = true, -- Enables/disables auto restoring session on start
			auto_session_suppress_dirs = {},
			session_lens = {
				load_on_setup = true,
			},
		})
	end,
}
