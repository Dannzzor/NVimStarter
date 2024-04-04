-- In order for the full features of emmet to work, be sure to have the language server installed globally with:
-- npm i -g @olrtg/emmet-language-server

return {

  {
    "olrtg/nvim-emmet",
    config = function()
      vim.keymap.set({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation)
    end,
  },
}
