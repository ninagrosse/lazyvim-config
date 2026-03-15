local function exists(path)
  return vim.uv.fs_stat(path) ~= nil
end

local colorscheme
if exists(vim.fn.stdpath("config") .. "/colors/dms.lua") then
  colorscheme = "dms"
else
  colorscheme = "catppuccin-nvim"
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
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
