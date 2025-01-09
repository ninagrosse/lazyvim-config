return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>yy",
        "<cmd>Yazi<cr>",
        desc = "Open Yazi",
      },
      {
        "<leader>yw",
        "<cmd>Yazi cwd<cr>",
        desc = "Open Yazi in nvim's working directory",
      },
      {
        "<leader>yt",
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last Yazi session",
      },
    },
    opts = {
      -- If you want to open Yazi instead of netrw. neo-tree hijacking must be disabled!
      open_for_directories = true,

      -- customize the keymaps that are active when yazi is open and focused. The
      -- defaults are listed below. Note that the keymaps simply hijack input and
      -- they are never sent to yazi, so only try to map keys that are never
      -- needed by yazi.
      --
      -- Also:
      -- - use e.g. `open_file_in_tab = false` to disable a keymap
      -- - you can customize only some of the keymaps (not all of them)
      -- - you can opt out of all keymaps by setting `keymaps = false`
      keymaps = {
        show_help = false,
        open_file_in_vertical_split = "<c-v>",
        open_file_in_horizontal_split = "<c-x>",
        open_file_in_tab = "<c-t>",
        grep_in_directory = "<c-s>",
        replace_in_directory = "<c-g>",
        cycle_open_buffers = false,
        copy_relative_path_to_selected_files = "<c-y>",
        send_to_quickfix_list = "<c-q>",
        change_working_directory = "<c-e>",
      },
    },
  },
}
