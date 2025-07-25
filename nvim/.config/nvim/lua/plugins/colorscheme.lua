return {

  "eldritch-theme/eldritch.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("eldritch").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- palette = "default", -- This option is deprecated. Use `vim.cmd[[colorscheme eldritch-dark]]` instead.
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
    })
  end,

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
  --{
  --    "folke/tokyonight.nvim",
  --    lazy = false,
  --    priority = 1000,
  --    opts = {
  --      transparent = true,
  --      styles = {
  --        sidebars = "transparent",
  --        floats = "transparent",
  --      },
  --    },
  --  },
  -- {
  --   "catgoose/nvim-colorizer.lua",
  --   event = "BufReadPre",
  --   opts = { -- set to setup table
  --   },
  -- },
  -- --{ "ellisonleao/gruvbox.nvim" },
}
