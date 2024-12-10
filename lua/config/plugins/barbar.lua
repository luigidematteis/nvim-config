return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- patched fonts support
    "lewis6991/gitsigns.nvim", -- display git status
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    local barbar = require "barbar"

    barbar.setup {
      clickable = true, -- Enables/disables clickable tabs
      tabpages = false, -- Enable/disables current/total tabpages indicator (top right corner)
      insert_at_end = true,
      icons = {
        button = "",
        buffer_index = true,
        filetype = { enabled = true },
        visible = { modified = { buffer_number = false } },
        gitsigns = {
          added = { enabled = true, icon = "+" },
          changed = { enabled = true, icon = "~" },
          deleted = { enabled = true, icon = "-" },
        },
      },
    }

    -- key maps

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map("n", "<leader>pp", "<Cmd>BufferPrevious<CR>", opts)
    map("n", "<leader>nn", "<Cmd>BufferNext<CR>", opts)
    -- Re-order to previous/next
    -- map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
    -- map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
    -- Goto buffer in position...
    map("n", "<leader>11", "<Cmd>BufferGoto 1<CR>", opts)
    map("n", "<leader>22", "<Cmd>BufferGoto 2<CR>", opts)
    map("n", "<leader>33", "<Cmd>BufferGoto 3<CR>", opts)
    map("n", "<leader>44", "<Cmd>BufferGoto 4<CR>", opts)
    map("n", "<leader>55", "<Cmd>BufferGoto 5<CR>", opts)
    map("n", "<leader>66", "<Cmd>BufferGoto 6<CR>", opts)
    map("n", "<leader>77", "<Cmd>BufferGoto 7<CR>", opts)
    map("n", "<leader>88", "<Cmd>BufferGoto 8<CR>", opts)
    map("n", "<leader>99", "<Cmd>BufferGoto 9<CR>", opts)
    map("n", "<leader>10", "<Cmd>BufferLast<CR>", opts)
    -- Pin/unpin buffer
    map("n", "<leader>pin", "<Cmd>BufferPin<CR>", opts)
    -- Close buffer
    map("n", "<leader>kk", "<Cmd>BufferClose<CR>", opts)
    map("n", "<leader>xxx", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
  end,
}
