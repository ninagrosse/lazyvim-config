local function exists(path)
  return vim.uv.fs_stat(path) ~= nil
end

local colorscheme
if exists(vim.fn.stdpath("config") .. "/colors/dms.lua") then
  colorscheme = "dms"
else
  colorscheme = "catppuccin-nvim"
end

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
      transparent_background = transparent_background,
    },
  },
  {
    "AvengeMedia/base46",
    opts = {
      transparency = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = colorscheme,
    },
  },
}
