return {
  -- or you can return new options to override all the defaults
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        --[[add your custom lualine config here]]
      }
    end,
  },
  --  {
  --    "nvim-lualine/lualine.nvim",
  --    event = "VeryLazy",
  --    opts = function(_, opts)
  --      table.insert(opts.sections.lualine_x, {
  --        function()
  --          return "😄"
  --        end,
  --      })
  --    end,
  --  },
}
