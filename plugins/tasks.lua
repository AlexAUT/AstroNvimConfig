return {
  {
    "stevearc/overseer.nvim",
    event = "BufEnter",
    config = function()
      require("overseer").setup {
        component_aliases = {
          -- Most tasks are initialized with the default components
          default = {
            { "display_duration", detail_level = 2 },
            "on_result_diagnostics_quickfix",
            "on_output_summarize",
            "on_exit_set_status",
            "on_complete_notify",
            "on_complete_dispose",
          },
          -- Tasks from tasks.json use these components
          default_vscode = {
            "default",
            {
              "on_output_quickfix",
              items_only = true,
              open_on_match = true,
            },
            "on_result_diagnostics",
            "on_result_diagnostics_quickfix",
          },
        },
      }
      require("dap.ext.vscode").load_launchjs()
    end,
  },
  {
    "Civitasv/cmake-tools.nvim",
    config = function()
      require("cmake-tools").setup {
        cmake_dap_configuration = { -- debug settings for cmake
          name = "cpp",
          type = "codelldb",
          request = "launch",
          stopOnEntry = false,
          runInTerminal = true,
          -- console = "integratedTerminal",
        },
        cmake_executor = { name = "overseer", opts = {} },
      }
    end,
  },
}
