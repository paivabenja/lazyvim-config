return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    opts = {
      flavour = "mocha",
    },
  },

  { "rose-pine/neovim", name = "rose-pine", lazy = true },

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      contrast = "hard",
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = true,
        folds = true,
      },
    },
  },

  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.cmd([[
        let g:gruvbox_material_background = 'hard'
      ]])
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
