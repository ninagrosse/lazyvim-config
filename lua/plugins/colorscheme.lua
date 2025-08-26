local transparent_background = true
if vim.g.neovide then
  vim.g.neovide_opacity = 0.94
  vim.g.neovide_normal_opacity = 1
  vim.g.neovide_cursor_animation_length = 0
  transparent_background = false
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = transparent_background, -- When in Neovide, this is set to false, otherwise true
    },
    tag = "v1.10.0", -- pin to fix bug with bufferline. See https://github.com/LazyVim/LazyVim/issues/6355 and https://github.com/LazyVim/LazyVim/pull/6354
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
