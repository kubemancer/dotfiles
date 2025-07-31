return {
  "akinsho/toggleterm.nvim",
  opts = {
    size = 10,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    direction = "horizontal",
    start_in_insert = true,
    persist_size = true,
    close_on_exit = true,
    shell = vim.o.shell,
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    local Terminal = require("toggleterm.terminal").Terminal

    -- K9s terminal
    local k9s = Terminal:new({
      cmd = "k9s",
      direction = "float",
      hidden = true,
      float_opts = {
        border = "curved",
      },
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
    })

    function _K9S_TOGGLE()
      k9s:toggle()
    end
    -- Floating terminal
    local float = Terminal:new({
      direction = "float",
      hidden = true,
      float_opts = {
        border = "curved",
      },
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
    })
    function _FLOAT_TERM_TOGGLE()
      float:toggle()
    end

    -- Lazygit terminal
    local lazgit = Terminal:new({
      cmd = "lazygit",
      direction = "float",
      -- hidden = true,
      float_opts = {
        border = "curved",
      },
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
    })
    function _LAZYGIT_TOGGLE()
      lazgit:toggle()
    end

    -- Default terminal (simplified - uses global opts)
    local defaultTerm = Terminal:new({
      direction = "horizontal",
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
    })

    function _TERM_TOGGLE()
      defaultTerm:toggle() -- Fixed variable name
    end

    -- Lazygit terminal
    local claude = Terminal:new({
      cmd = "claude",
      direction = "float",
      -- hidden = true,
      float_opts = {
        border = "curved",
      },
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
    })
    function _CLAUDE_TOGGLE()
      claude:toggle()
    end

    vim.keymap.set("n", "<leader>tk", _K9S_TOGGLE, { desc = "Toggle k9s (float)" })
    vim.keymap.set("n", "<leader>tt", _TERM_TOGGLE, { desc = "Toggle Terminal" })
    vim.keymap.set("n", "<leader>tf", _FLOAT_TERM_TOGGLE, { desc = "Toggle Float Terminal" })
    vim.keymap.set("n", "<leader>tg", _LAZYGIT_TOGGLE, { desc = "Toggle Float Terminal" })
    vim.keymap.set("n", "<leader>tc", _CLAUDE_TOGGLE, { desc = "Toggle Float Terminal" })
  end,
}
