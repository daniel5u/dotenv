-- Terminal shortcuts
--  `:terminal` uses the current window by default; these force a split instead.
--  See `:help :terminal`, `:help :horizontal`, `:help :vertical`
vim.keymap.set('n', '<leader>ts', '<Cmd>horizontal terminal<CR>', { desc = 'Open [T]erminal orizontal [s]split' })
vim.keymap.set('n', '<leader>tv', '<Cmd>vertical terminal<CR>', { desc = 'Open [T]erminal [v]ertical split' })
