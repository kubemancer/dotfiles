return {
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional
    "neovim/nvim-lspconfig", -- optional
  },
  opts = {

    conceal = {
      enabled = true, -- Enable conceal feature
      symbol = "󱏿", -- Character to use for concealed classes
      highlight = { -- Highlight group for the conceal character
        fg = "#38BDF8",
      },
    },
    cmp = {
      highlight = "foreground", -- color preview style, "foreground" | "background"
    },
  },
}
