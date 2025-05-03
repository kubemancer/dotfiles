return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "luckasRanarison/tailwind-tools.nvim",
    "onsails/lspkind-nvim",
    -- Make sure these other dependencies are listed if you're using them
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local tw_tools = require("tailwind-tools.cmp")

    -- Merge with existing options
    return opts
  end,
}
