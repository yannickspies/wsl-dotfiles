-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Neovide specific settings
if vim.g.neovide then
  -- Font
  vim.o.guifont = "IntoneMono NF:h15"

  -- Padding
  vim.g.neovide_padding_top = 10
  vim.g.neovide_padding_bottom = 10
  vim.g.neovide_padding_right = 10
  vim.g.neovide_padding_left = 10

  -- Transparency
  vim.g.neovide_transparency = 0.8

  -- No animations
  vim.g.neovide_cursor_animation_length = 0

  -- Other recommended settings
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_confirm_quit = true

  -- Since you're using WSL, you might want to add:
  vim.g.neovide_remember_window_size = true
end
