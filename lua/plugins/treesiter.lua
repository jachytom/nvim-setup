-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- runs :TSUpdate after install/update
    config = function()
      require("nvim-treesitter.configs").setup({
        -- list of languages you want installed
        ensure_installed = {
          "lua", "vim", "bash", "python", "c", "cpp", "json", "yaml"
        },
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = { enable = true },
      })
    end,
  },
}
