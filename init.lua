require("moneymike.core")
require("moneymike.lazy")
require("moneymike.utils.resize_split")


-- Disable the default mappings for tmux navigator
vim.g.tmux_navigator_no_mappings = 1

-- Map Shift + Ctrl + Arrow keys to navigate between Vim splits and Tmux panes
vim.api.nvim_set_keymap('n', '<S-C-Left>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-C-Down>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-C-Up>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-C-Right>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-C-\\>', ':TmuxNavigatePrevious<CR>', { noremap = true, silent = true })
