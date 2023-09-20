local cmp = require'cmp'
return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping= {
       ["<C-e>"] = cmp.mapping.confirm { select = true },
      }
    },
    config = function(plugin, opts)
      local cmp = require "cmp"
      -- run cmp setup
      cmp.setup(opts)

      -- configure `cmp-cmdline` as described in their repo: https://github.com/hrsh7th/cmp-cmdline#setup
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
    end
  }
}
