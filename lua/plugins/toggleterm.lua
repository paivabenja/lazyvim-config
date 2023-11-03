return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 25
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      insert_mappings = true,
      terminal_mappings = true,
    },
    keys = {
      { "<C-h>", mode = { "t", "n" }, "<cmd>ToggleTerm direction=horizontal<CR>", desc = "Toggle horizontal terminal" },
    },
  },
}
