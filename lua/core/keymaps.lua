local map = vim.keymap.set
local opts = { noremap = true, silent = true }

--------------
-- Навигация --
--------------
map("n", "<C-h>", "<C-w>h", opts) -- Переход на левое окно
map("n", "<C-j>", "<C-w>j", opts) -- Переход на нижнее окно
map("n", "<C-k>", "<C-w>k", opts) -- Переход на верхнее окно
map("n", "<C-l>", "<C-w>l", opts) -- Переход на правое окно

----------------
-- Файлы --
----------------
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- Файловое дерево (об этом ниже)
map("n", "<leader>ff", ":Telescope find_files<CR>", opts) -- Поиск файлов
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts) -- Поиск по содержимому
map("n", "<leader>fb", ":Telescope buffers<CR>", opts) -- Открытые буферы

-------------
-- Редактирование --
-------------
map("v", "<", "<gv", opts) -- Сдвиг выделения влево
map("v", ">", ">gv", opts) -- Сдвиг выделения вправо
map("n", "<leader>y", '"+y', opts) -- Копировать в системный буфер
map("v", "<leader>y", '"+y', opts)
map("n", "<leader>p", '"+p', opts) -- Вставить из системного буфера
map("i", "jk", "<Esc>", opts)
map("n", "<leader><leader>s", ":w<Esc>", opts)

---------
-- LSP --
---------
map("n", "gd", vim.lsp.buf.definition, { remap = true }) -- Перейти к определению
map("n", "gr", vim.lsp.buf.references, { remap = true }) -- Список использований
map("n", "<C-k>", vim.lsp.buf.hover, opts) -- Документация
map("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Переименовать
map("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- Действия кода

-- Показать диагностику под курсором (аналог gh)
vim.keymap.set("n", "gh", vim.diagnostic.open_float, opts)
-- Навигация по ошибкам
vim.keymap.set("n", "[e", vim.diagnostic.goto_prev, opts) -- Предыдущая ошибка
vim.keymap.set("n", "]e", vim.diagnostic.goto_next, opts) -- Следующая ошибка
-- Показать все диагностики в буфере
vim.keymap.set("n", "<leader>ld", vim.diagnostic.setloclist, opts)

---------
-- Прочее --
---------
map("n", "<leader>u", vim.cmd.UndotreeToggle, opts) -- Дерево изменений
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", opts) -- Заменить слово

-- Варианты управления файловым менеджером:
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- Переключатель (открыть/закрыть)
map("n", "<leader>f", ":NvimTreeFindFile<CR>", opts) -- Найти текущий файл в дереве
map("n", "<leader>r", ":NvimTreeRefresh<CR>", opts) -- Обновить дерево

-- My keymaps
map("n", "<S-j>", "5j", opts)
map("n", "<S-k>", "5k", opts)

-- Tabs (BufferLine)
map("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
map("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
map("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
map("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
map("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
map("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
map("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)
map("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts)
map("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts)
map("n", "<leader>0", ":BufferLineGoToBuffer 10<CR>", opts)
map("n", "<leader>q", ":BufferLinePickClose<CR>", opts)
-- map("n", "<leader>w", ":BufferLinePick<CR>", opts)
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
map("n", "<leader><S-h>", ":BufferLineMovePrev<CR>", opts)
map("n", "<leader><S-l>", ":BufferLineMoveNext<CR>", opts)
map("n", "<leader><leader>c", ":bd<CR>:bprevious<CR>", opts)
map("n", "<leader><leader>C", ":BufferLinePickClose<CR>", opts)
map("n", "<leader><leader>b", ":BufferLinePick<CR>", opts)

-- Autosession
map("n", "<leader>wr", ":SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
map("n", "<leader>ws", ":SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
map("n", "<leader>ls", ":SessionSearch<CR>", { desc = "Search sessions" })
