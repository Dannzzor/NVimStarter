return {{
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    -- disable the keymap to grep files
    -- { "<leader>,", false },
    -- { "<leader>.", false },
    -- change a keymap
    { "<leader>,", "<cmd>FzfLua files<cr>", desc = "Find Files" },
    { "<leader>.", "<cmd>FzfLua live_grep<cr>", desc = "Grep" },
  }
}
}
