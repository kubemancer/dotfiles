return {

  --  {
  --    "catppuccin/nvim",
  --    name = "catppuccin",
  --    lazy = false, -- Load the plugin immediately
  --    priority = 1000, -- Ensure this plugin loads before others
  --    config = function()
  --      -- Set the Catppuccin theme
  --      vim.cmd.colorscheme("catppuccin")
  --    end,
  --    opts = {
  --      transparent = true,
  --      styles = {
  --        sidebars = "transparent",
  --        floats = "transparent",
  --      },
  --    },
  --  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      style = "storm",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  -- {
  --   "catgoose/nvim-colorizer.lua",
  --   event = "BufReadPre",
  --   opts = { -- set to setup table
  --   },
  -- },
  -- --{ "ellisonleao/gruvbox.nvim" },
}
