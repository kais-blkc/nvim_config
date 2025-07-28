-- В plugins/nvim-tree.lua
return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- для иконок
	config = function()
		require("nvim-tree").setup({
			on_attach = function(bufnr)
				local api = require("nvim-tree.api")

				-- Базовые keymaps
				local function opts(desc)
					return {
						desc = "nvim-tree: " .. desc,
						buffer = bufnr,
						noremap = true,
						silent = true,
						nowait = true,
					}
				end

				-- Основные keymaps
				vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
				vim.keymap.set("n", "o", api.node.open.edit, opts("Open"))
				vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Vertical Split"))
				vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
				vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
				vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))
				vim.keymap.set("n", "a", api.fs.create, opts("Create File/Dir"))
				vim.keymap.set("n", "d", api.fs.trash, opts("Trash"))
				vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
				vim.keymap.set("n", "x", api.fs.cut, opts("Cut"))
				vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))
				vim.keymap.set("n", "y", api.fs.copy.filename, opts("Copy Name"))
				-- make show hidden files
				vim.keymap.set("n", ".", api.tree.toggle_hidden_filter, opts("Toggle Dotfiles"))
			end,

			-- Дополнительные настройки
			view = {
				width = 35,
				side = "left",
			},
			update_focused_file = {
				enable = true,
				update_cwd = false,
			},
			filters = {
				dotfiles = false, -- показывать скрытые файлы
			},
			renderer = {
				group_empty = false, -- группировать пустые папки
				highlight_git = true,
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
					},
				},
			},
		})
	end,
}
