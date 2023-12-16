-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- LSP Floating diagnostics
vim.keymap.set("n", "<leader>l", function()
  vim.diagnostic.open_float({ border = "rounded" })
end)

-- Disable moving lines up/down
vim.keymap.del({ "n", "i", "v" }, "<A-k>")
vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.set({ "n", "i", "v" }, "<Esc>j", "")
vim.keymap.set({ "n", "i", "v" }, "<Esc>k", "")
vim.keymap.del({ "n", "i", "v" }, "<Esc>j")
vim.keymap.del({ "n", "i", "v" }, "<Esc>k")
vim.keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Nvim Tmux Navigation
local nvim_tmux_nav = require("nvim-tmux-navigation")
vim.keymap.set({ "n", "t" }, "<A-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set({ "n", "t" }, "<A-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set({ "n", "t" }, "<A-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set({ "n", "t" }, "<A-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set({ "n", "t" }, "<A-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set({ "n", "t" }, "<A-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

-- Nvim Multi Cursor
vim.keymap.set("n", "<C-LeftMouse>", "<Plug>(VM-Mouse-Cursor)")

vim.keymap.set("n", "<C-RightMouse>", "<Plug>(VM-Mouse-Word)")
vim.keymap.set("n", "<M-C-RightMouse>", "<Plug>(VM-Mouse-Column)")

-- Neo Tree

vim.keymap.del("n", "<leader>e")
vim.keymap.set("n", "<C-b>", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end)

vim.keymap.set("n", "<C-p>", function()
  vim.cmd([[Telescope find_files]])
end)
