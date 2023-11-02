return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = {
    flavour = "mocha",
  } },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
