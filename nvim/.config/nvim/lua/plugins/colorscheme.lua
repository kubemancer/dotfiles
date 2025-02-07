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
  --  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
