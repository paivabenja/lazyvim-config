return {
  {
    "alexghergh/nvim-tmux-navigation",
    lazy = true,
    opts = {
      disabled_when_zoomed = true,
      keybindings = {
        left = "<A-h>",
        down = "<A-j>",
        up = "<A-k>",
        right = "<A-l>",
        last_active = "<A-\\>",
        next = "<A-Space>",
      },
    },
  },
}
