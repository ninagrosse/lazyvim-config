-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>lL", function()
  LazyVim.news.changelog()
end, { desc = "LazyVim Changelog" })
vim.keymap.del("n", "<leader>L")

-- obsidian.nvim keymaps
-- See commands: https://github.com/obsidian-nvim/obsidian.nvim
vim.keymap.set("n", "<leader>o", "", { desc = "Obsidian" })
vim.keymap.set("n", "<leader>oo", "<cmd>Obsidian open<cr>", { desc = "Open note in Obsidian app" })
vim.keymap.set("n", "<leader>or", "<cmd>Obsidian rename<cr>", { desc = "Rename current note" })

vim.keymap.set("n", "<leader>ob", "<cmd>Obsidian backlinks<cr>", { desc = "Show backlinks of current note" })
vim.keymap.set("n", "<leader>ol", "<cmd>Obsidian links<cr>", { desc = "Search list of links in current note" })

vim.keymap.set("n", "<leader>od", "<cmd>Obsidian today<cr>", { desc = "Open/create today's daily note" })
vim.keymap.set("n", "<leader>oD", "<cmd>Obsidian dailies -20<cr>", { desc = "Open list of daily notes" })

vim.keymap.set("n", "<leader>on", "<cmd>Obsidian new<cr>", { desc = "Create new note" })
vim.keymap.set("n", "<leader>oN", "<cmd>Obsidian new_from_template<cr>", { desc = "Create new note from template" })

vim.keymap.set("n", "<leader>oi", "<cmd>Obsidian template<cr>", { desc = "Insert template into current note" })
vim.keymap.set("n", "<leader>oI", "<cmd>Obsidian paste_img<cr>", { desc = "Paste image from clipboard into note" })

vim.keymap.set("n", "<leader>os", "<cmd>Obsidian quick_switch<cr>", { desc = "Switch to another note" })
vim.keymap.set("n", "<leader>oS", "<cmd>Obsidian search<cr>", { desc = "Search notes with ripgrep" })

vim.keymap.set("n", "<leader>ot", "<cmd>Obsidian toc<cr>", { desc = "Search table of contents in current note" })
vim.keymap.set("n", "<leader>oT", "<cmd>Obsidian tags<cr>", { desc = "Search list of all tags in all notes" })

vim.keymap.set("n", "<leader>ow", "<cmd>Obsidian workspace<cr>", { desc = "Switch to another workspace" })
