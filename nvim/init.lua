-- Indentation and Tabs
vim.cmd('filetype plugin indent on')
vim.opt.autoindent = true               -- Enable automatic indentation
vim.opt.expandtab = true                -- Use spaces instead of tabs
vim.opt.tabstop = 4                     -- Number of spaces for a tab
vim.opt.shiftwidth = 4                  -- Number of spaces for each indentation level
vim.opt.smartindent = true              -- Enable smart indentation

-- Line Numbers
vim.opt.number = true                   -- Show line numbers
vim.opt.relativenumber = true           -- Show relative line numbers
vim.opt.cursorline = true               -- Highlight the current line

-- Miscellaneous
vim.opt.showmode = false                -- Hide the mode indicator (e.g., -- INSERT --)
vim.opt.wrap = false                    -- Disable line wrapping

-- Search and Matching
vim.opt.ignorecase = true               -- Ignore case when searching
vim.opt.smartcase = true                -- Use case-sensitive search when query contains uppercase letters
vim.opt.hlsearch = true                 -- Highlight search results
vim.opt.incsearch = true                -- Show search matches as you type

-- Appearance options
vim.opt.termguicolors = true            -- Enable true color support
vim.opt.background = 'dark'             -- Set the background color (options: 'dark', 'light')
vim.cmd('colorscheme molokai')          -- Set the color scheme (replace 'molokai' with the desired color scheme)

-- Syntax highlighting
vim.cmd('syntax enable')

-- Folding
vim.opt.foldenable = true
vim.opt.foldmethod = 'indent'

-- Clipboard support
-- Needs xclip to be installed
vim.opt.clipboard:append{"unnamedplus"}

-- Key mapping
-- Change the leader key to space
vim.g.mapleader = ' '

-- Key mappings
vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', { noremap = true, silent = true }) -- Open file explorer
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true }) -- Escape from insert mode
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true }) -- Move down visually
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true }) -- Move up visually
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true }) -- Find files with Telescope
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true }) -- Live grep with Telescope

-- Programming Language Settings
-- HTML/CSS/JS

-- HTML settings
vim.cmd('autocmd FileType html setlocal shiftwidth=2 tabstop=2')

-- CSS settings
vim.cmd('autocmd FileType css setlocal shiftwidth=2 tabstop=2')

-- JavaScript settings
vim.cmd('autocmd FileType javascript setlocal shiftwidth=2 tabstop=2')

-- Java settings
vim.cmd('autocmd FileType java setlocal shiftwidth=4 tabstop=4') -- Set indentation for Java files

-- Set omnifunc to enable basic completion
vim.o.omnifunc = 'syntaxcomplete#Complete'
-- Set custom completion trigger key
vim.cmd('inoremap ` <C-x><C-o>')

-- Additional Settings
-- Enable mouse support
vim.opt.mouse = 'a'                     -- Enable mouse support in all modes

-- Enable line numbers in terminal
vim.opt.number = true                    -- Show line numbers in terminal

-- Set up auto-save
vim.cmd('autocmd BufLeave * silent! write') -- Auto-save on buffer leave


-- Ensure lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup("slydragonn.plugins")

-- Plugin Management (using lazy.nvim)
-- Create a plugins directory and add your plugins there
-- Example: ~/nvim/lua/slydragonn/plugins/example.lua

-- Example of a plugin configuration
-- ~/nvim/lua/slydragonn/plugins/telescope.lua

-- Add additional plugins for Java development
require("lazy").setup({
    {'mfussenegger/nvim-jdtls'}, -- Java language server
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}, -- Treesitter for syntax highlighting
    {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}, -- Telescope for fuzzy finding
    -- Add more plugins as needed
})

-- Test
--

-- Map F5 to compile and run Java code
vim.api.nvim_set_keymap('n', '<F5>', ':w<CR>:!javac % && java %:r<CR>', { noremap = true, silent = true })

-- Setze scrolloff auf 10, damit immer 10 Zeilen am unteren Rand frei bleiben
vim.o.scrolloff = 10
