return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
  },
  opts = {
    filesystem = {
      hijack_netrw_behavior = "disabled",
    },
  },
}
