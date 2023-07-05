local cmp = require'cmp'
return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping= {
       ["<C-e>"] = cmp.mapping.confirm { select = true },
      }
    }
  }
}
