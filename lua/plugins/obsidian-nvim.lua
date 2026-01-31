return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      preset = "obsidian",
      code = {
        sign = true,
        width = "full",
        right_pad = 0,
      },
      heading = {
        sign = true,
      },
      checkbox = {
        enabled = true,
        checked = { scope_highlight = "@markup.strikethrough" },
        custom = {
          todo = { raw = "[~]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo", scope_highlight = nil },
          alert = { raw = "[!]", rendered = "󰀦 ", highlight = "DiagnosticError", scope_highlight = nil },
          arrow = { raw = "[>]", rendered = "󰒊 ", highlight = "DiagnosticWarn", scope_highlight = nil },
          strike = { raw = "[-]", rendered = " ", scope_highlight = "@markup.strikethrough" },
        },
      },
    },
  },
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",

    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
      ui = { -- disabled weil render-markdown das Rendering übernimmt
        enable = false,
      },
      workspaces = {
        {
          name = "personal",
          path = "~/notebook",
        },
        {
          name = "work",
          path = "~/obsidian-work",
        },
      },
      checkbox = {
        -- Checkboxen mit <CR> togglen
        order = { " ", "~", "x", "!", ">", "-" },
      },
      daily_notes = {
        folder = "Daily_Logs",
      },
      templates = {
        folder = "Templates",
      },
      legacy_commands = false,
    },
  },
}
