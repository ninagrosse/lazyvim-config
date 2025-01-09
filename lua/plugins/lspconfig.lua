-- Override LSP Server Settings
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {
          filetypes = { "bash", "sh", "zsh", "bashrc", "zshrc" },
        },
      },
    },
  },
}
