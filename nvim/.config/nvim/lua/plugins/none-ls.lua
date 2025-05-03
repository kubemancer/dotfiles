--return {
--  {
--    "nvimtools/none-ls.nvim",
--    config = function()
--      require("null-ls").setup()
--    end,
--    requires = { "nvim-lua/plenary.nvim" },
--  },
--
--}

return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      debug = true,
      sources = {
        null_ls.builtins.formatting.prettier,
        -- We'll add eslint back later once this is working
      }
    })
  end,
}
--return {
--  "nvimtools/none-ls.nvim",
--  dependencies = {
--    "nvimtools/none-ls-extras.nvim",
--  },
--  config = function()
--    local null_ls = require("null-ls")
--
--    null_ls.setup({
--      sources = {
--        null_ls.builtins.formatting.stylua,
--        null_ls.builtins.formatting.prettier,
--        require("none-ls.diagnostics.eslint_d"),
--      },
--    })
--
--    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
--  end,
--}
