-- Установка лидера ДО загрузки keymaps!
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Установка lazy.nvim (должно быть в начале)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
-- Подключение lazy
require("lazy").setup("plugins")

-- Theme
vim.cmd.colorscheme("catppuccin")
-- Подключение основных модулей
require("core.options") -- Настройки
require("core.keymaps") -- Keymaps
-- Загрузка плагинов
require("lazy").setup("plugins")
