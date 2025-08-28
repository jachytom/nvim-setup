-- ~/.config/nvim/lua/plugins/cmp.lua
return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", -- load only when you start typing
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",   -- LSP source
    "hrsh7th/cmp-buffer",     -- buffer words
    "hrsh7th/cmp-path",       -- filesystem paths
    "saadparwaiz1/cmp_luasnip", -- snippets
    "L3MON4D3/LuaSnip",       -- snippet engine
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- confirm selection
        ["<Tab>"] = cmp.mapping.select_next_item(),       -- next suggestion
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),     -- prev suggestion
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}

