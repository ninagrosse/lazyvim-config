return {
  "nosduco/remote-sshfs.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = {
    connections = {
      sshfs_args = {
        "-o follow_symlinks",
      },
    },
    -- Refer to the configuration section below
    -- or leave empty for defaults
  },
  init = function()
    local api = require("remote-sshfs.api")
    vim.keymap.set("n", "<leader>r", "", { silent = true, desc = "Remote sshfs" })
    vim.keymap.set("n", "<leader>rc", api.connect, { silent = true, desc = "Remote connect" })
    vim.keymap.set("n", "<leader>rd", api.disconnect, { silent = true, desc = "Remote disconnect" })
    vim.keymap.set("n", "<leader>re", api.edit, { silent = true, desc = "Remote edit connection" })
  end,
}
