---@type MappingsTable
local M = {}

-- n, v, i, t = mode names

M.general = {

  n = {
    -- save
    ["<leader>bs"] = { "<cmd> w <CR>", "Save file" },
  },
}

M.ranger = {

  n = {
    ["<leader>rr"] = { "<cmd> Ranger<CR>", "Open Ranger" },
  },
}

M.comment = {
  plugin = false,

  -- toggle comment in both modes
  n = {
    ["gcc"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },

  v = {
    ["gcc"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

M.lspconfig = {

  -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
  n = {

    -- ["<leader>cc"] = { "<cmd> lua vim.lsp.buf.code_action()<CR>", "Show Code Actions" },

    ["<leader>bf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },

    ["[e"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]e"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },
  },
}

M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>sp"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
  },
}

return M
