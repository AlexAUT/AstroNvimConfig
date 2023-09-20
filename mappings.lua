-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["[q"] = {
      function() require("mini.bracketed").quickfix "backward" end,
      desc = "Previous quickfix",
    },
    ["]q"] = {
      function() require("mini.bracketed").quickfix "forward" end,
      desc = "Next quickfix",
    },
    ["<leader>ot"] = {
      function() require("overseer").toggle() end,
      desc = "Toggle overseer task pane",
    },
    ["<leader>or"] = {
      function() require("overseer").run_template {} end,
      desc = "Run overseer task",
    },
    ["<leader>of"] = {
      "<CMD>OverseerQuickAction open float<CR>",
      desc = "Toggle overseer task pane",
    },
    ["<leader>dd"] = {
      require("dap").down,
      desc = "Go one frame down",
    },
    ["<leader>du"] = {
      require("dap").up,
      desc = "Go one frame up",
    },
    ["<leader>dt"] = {
      require("dapui").toggle,
      desc = "Toggle DAP UI",
    },
    ["<leader>di"] = {
      require("dapui").eval,
      desc = "Eval cursor location",
    },
    ["<leader>dI"] = {
      require("dap.ui.widgets").hover,
      desc = "Widgets hover",
    },
    ["<leader>dO"] = {
      function() require("dap.ui.widgets").centered_float(require("dap.ui.widgets").scopes) end,
      desc = "Widgets hover",
    },
    ["<A-o>"] = ":ClangdSwitchSourceHeader<CR>",
    ["<leader>fv"] = {
      "<CMD>Telescope dap variables<CR>",
      desc = "Find DAP variables",
    },
    ["<leader>fB"] = {
      "<CMD>Telescope dap list_breakpoints<CR>",
      desc = "Find DAP breakpoints",
    },
    ["<leader>fs"] = {
      "<CMD>Telescope dap frames<CR>",
      desc = "Find DAP frames (stacks)",
    },
  },
  i = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
    --   end,
    --   desc = "Pick to close",
    -- },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
