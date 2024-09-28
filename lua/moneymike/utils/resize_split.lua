-- Timeout duration (in milliseconds)
_G.reset_timer = nil
_G.enter_resize_mode = nil
_G.exit_resize_mode = nil
local timeout_duration = 1000  -- 1 second

local resize_timer = nil

-- Function to reset the timer
function _G.reset_timer()
  if resize_timer then
    resize_timer:stop()
  end

  resize_timer = vim.defer_fn(function()
    _G.exit_resize_mode()
  end, timeout_duration)
end

-- Define a function to enter "Resize Mode"
function _G.enter_resize_mode()
  -- Temporarily remap the arrow keys for resizing splits
  vim.api.nvim_set_keymap('n', '<Up>', ':resize +2<CR>:lua _G.reset_timer()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<Down>', ':resize -2<CR>:lua _G.reset_timer()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<Left>', ':vertical resize +2<CR>:lua _G.reset_timer()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<Right>', ':vertical resize -2<CR>:lua _G.reset_timer()<CR>', { noremap = true, silent = true })

  -- Set `Esc` to exit resize mode immediately
  vim.api.nvim_set_keymap('n', '<Esc>', ':lua _G.exit_resize_mode()<CR>', { noremap = true, silent = true })

  -- Start or reset the timeout timer when entering resize mode
  _G.reset_timer()
end

-- Define a function to exit "Resize Mode"
function _G.exit_resize_mode()
  -- Restore the default arrow key behavior
  vim.api.nvim_del_keymap('n', '<Up>')
  vim.api.nvim_del_keymap('n', '<Down>')
  vim.api.nvim_del_keymap('n', '<Left>')
  vim.api.nvim_del_keymap('n', '<Right>')
  vim.api.nvim_del_keymap('n', '<Esc>')

  -- Stop the timer if it is still running
  if resize_timer then
    resize_timer:stop()
    resize_timer = nil
  end
end

-- Bind Leader + ps to enter resize mode
vim.api.nvim_set_keymap('n', '<leader>sz', ':lua enter_resize_mode()<CR>', { noremap = true, silent = true })
