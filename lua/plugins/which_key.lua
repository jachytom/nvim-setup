return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
        config = function()
            local wk = require("which-key")
            wk.add({
                { "-", "<CMD>Oil<CR>", desc = "Open parent directory with Oil", mode = "n"},
            })
        end,
    }
}
