return {
  "gbprod/substitute.nvim",
  event = "VeryLazy",
  opts = {},
  init = function()
    local exchange = require("substitute.exchange")
    vim.keymap.set("n", "cx", exchange.operator, { desc = "Exchange [motion]" })
    vim.keymap.set("n", "cxx", exchange.line, { desc = "Exchange line" })
    vim.keymap.set("x", "X", exchange.visual, { desc = "Exchange visual" })
    vim.keymap.set("n", "cxc", exchange.cancel, { desc = "Exchange cancel" })
  end,
}
