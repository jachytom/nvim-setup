-- General
vim.opt.number = true
--vim.opt.relativenumber = true		-- relative line numbers
--vim.opt.mouse = "a"			-- enable mouse support
vim.opt.clipboard = "unnamedplus"	-- enable system clipboard
vim.opt.termguicolors = true		-- true color support


--Tabs & indentation
vim.opt.expandtab = true		-- convert tabs into spaces
vim.opt.shiftwidth = 4			-- spaces per indentation
vim.opt.tabstop = 4			-- spaces per tab
vim.opt.softtabstop = 4			-- backspace deletes 4 spaces
vim.opt.smartindent = true		-- autoindent new lines


-- Search
vim.opt.ignorecase = true		-- ignore case by default
vim.opt.smartcase = true        -- but respect case if capital letter present
vim.opt.incsearch = true        -- live seatch while typing
vim.opt.hlsearch = true         -- highlight matches


-- UI
vim.opt.cursorline = true       -- highlight current line
vim.opt.signcolumn = "yes"      -- always show sign column (LSP, git, etc.)
vim.opt.scrolloff = 7           -- keep 5 lines visible above/below cursor
vim.opt.wrap = true             -- wrap long lines


-- Splits
vim.opt.splitbelow = true       -- horizontal splits below
vim.opt.splitright = true       -- vertical splits to the right
