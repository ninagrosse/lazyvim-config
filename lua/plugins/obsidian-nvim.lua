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
        substitutions = {
          -- replaces {{week}} with "Year-WeekOfYear", e.g. 2026-W7
          week = function()
            local weeknumber = os.date("%W", os.time()) + 1 -- German weeks start on Monday, so we're one week "ahead" compared to US
            return os.date("%Y-W" .. weeknumber, os.time())
          end,
          -- replaces {{month}} with yyyy-MM, e.g. 2026-02
          month = function()
            return os.date("%Y-%m", os.time())
          end,
          -- replaces {{year}} with yyyy, e.g. 2026
          year = function()
            return os.date("%Y", os.time())
          end,
        },
      },
      legacy_commands = false,
    },
  },
}
