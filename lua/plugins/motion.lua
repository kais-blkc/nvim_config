return {
  'phaazon/hop.nvim',
  branch = 'v2', -- Стабильная версия
  config = function()
    local hop = require('hop')
    local directions = require('hop.hint').HintDirection

    hop.setup({
      keys = 'etovxqpdygfblzhckisuran', -- Оптимальные клавиши-метки
      jump_on_sole_occurrence = false, -- Не прыгать автоматически если 1 вариант
      case_insensitive = true, -- Игнорировать регистр
    })

    -- Клавиши для перемещения по строкам 
    vim.keymap.set('n', '<leader><leader>j', function()
      hop.hint_lines({ direction = directions.AFTER_CURSOR })
    end, { desc = 'Hop line down' })

    vim.keymap.set('n', '<leader><leader>k', function()
      hop.hint_lines({ direction = directions.BEFORE_CURSOR })
    end, { desc = 'Hop line up' })

    vim.keymap.set('v', '<leader><leader>j', function()
      hop.hint_lines({ direction = directions.AFTER_CURSOR })
    end, { desc = 'Hop line down' })

    vim.keymap.set('v', '<leader><leader>k', function()
      hop.hint_lines({ direction = directions.BEFORE_CURSOR })
    end, { desc = 'Hop line up' })


    -- Дополнительные полезные маппинги
    vim.keymap.set('n', '<leader><leader>w', function()
      hop.hint_words({})
    end, { desc = 'Hop word' })
  end
}
