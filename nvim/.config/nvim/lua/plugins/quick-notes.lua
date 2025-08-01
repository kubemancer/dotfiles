-- Quick Notes Plugin - A simple plugin to demonstrate Neovim plugin development
-- Features: Create, list, and manage quick notes from within Neovim

return {

  {
    "kubemancer/quick-notes.nvim",
    config = function()
      require("quick-notes").setup({
        notes_dir = vim.fn.expand("~/notes"),
        default_note_name = "quick-note",
        date_format = "%Y-%m-%d_%H-%M-%S",
      })
    end,
    keys = {
      { "<leader>nn", "<cmd>QuickNote<cr>", desc = "Create new quick note" },
      { "<leader>nl", "<cmd>QuickNoteList<cr>", desc = "List quick notes" },
      { "<leader>ns", "<cmd>QuickNoteSearch<cr>", desc = "Search notes" },
    },
    cmd = { "QuickNote", "QuickNoteList", "QuickNoteSearch" },
  },
}
