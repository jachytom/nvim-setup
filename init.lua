-- set leader keys

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if lazy data path doesn't exist, clone it from github
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
-- add the path to neovim's runtimepath
vim.opt.rtp:prepend(lazypath)

require("config.keymaps")
require("config.lsp")
require("config.options")
require("lazy").setup({
	{ import = "plugins" },
}, {
	change_detection = { notify = false },
})

