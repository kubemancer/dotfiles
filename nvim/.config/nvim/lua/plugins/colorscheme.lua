return {
  {
    "kubemancer/firewatch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function(_, opts)
      require("firewatch").setup(opts)
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
  },
  -- {
  --   "LazyVim/LazyVim",
  --   -- opts = {
  --   --   -- don't let LazyVim load a colorscheme
  --   --   colorscheme = function() end,
  --   -- },
  --   opts = {
  --     colorscheme = function()
  --       vim.cmd([[
  --       highlight Normal guibg=NONE ctermbg=NONE
  --       highlight NormalFloat guibg=NONE ctermbg=NONE
  --       highlight NormalNC guibg=NONE ctermbg=NONE
  --     ]])
  --     end,
  --   },
  -- },
  --{
  --  "Mofiqul/dracula.nvim",
  --  config = function()
  --    require("dracula").setup({
  --      transparent_bg = true,
  --    })
  --    vim.cmd("colorscheme dracula")
  --  end,
  --},
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   config = function()
  --     require("catppuccin").setup({
  --       background = {
  --         light = "latte",
  --         dark = "mocha",
  --       },
  --       transparent_background = true,
  --     })
  --     vim.cmd.colorscheme("catppuccin")
  --   end,
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --     style = "storm",
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },
  -- {
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("cyberdream").setup({
  --       transparent = true,
  --     })
  --     vim.cmd("colorscheme cyberdream")
  --   end,
  -- },
  -- {
  --   "catgoose/nvim-colorizer.lua",
  --   event = "BufReadPre",
  --   opts = { -- set to setup table
  --   },
  -- },
  -- { "ellisonleao/gruvbox.nvim" },
}
