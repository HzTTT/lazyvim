-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
-- -------------- 插入模式 ----------------
keymap.set("i", "jk", "<ESC>")

-- -------------- 视觉模式 ----------------
keymap.set("v", "J", ":m'>+1<CR>gv=gv")
keymap.set("v", "K", ":m'<-2<CR>gv=gv")
