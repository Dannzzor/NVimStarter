-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>,", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>.", builtin.live_grep, { desc = "Grep" })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
--

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "<leader>n", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "<leader>m", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
  map("n", "<leader>n", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "<leader>m", "<cmd>bnext<cr>", { desc = "Next buffer" })
end

map("n", "<leader>x", ":x<cr>", { desc = "Kill pane" })
map("n", "<leader>w", ":Bdelete<cr>", { desc = "Kill buffer" })
