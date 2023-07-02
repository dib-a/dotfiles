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
-- needs xclip to be installed
vim.opt.clipboard:append{"unnamedplus"}

-- Key mapping
    -- How to map keys 
    -- (n: normal mode; v: visual mode; i: insert mode)
    -- noremap = true ensures non-recursive mapping
    -- silent = true makes the mapping silent (no display in the command-line area)
    -- Set key mapping for normal mode using the leader key followed by 'e' 

-- Change the leader key to space
vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })


-- Programming
-- HTML/CSS/JS

-- HTML settings
vim.cmd('autocmd FileType html setlocal shiftwidth=2 tabstop=2')

-- CSS settings
vim.cmd('autocmd FileType css setlocal shiftwidth=2 tabstop=2')

-- JavaScript settings
vim.cmd('autocmd FileType javascript setlocal shiftwidth=2 tabstop=2')

-- Set omnifunc to enable basic completion
vim.o.omnifunc = 'syntaxcomplete#Complete'
-- Set custom completion trigger key
vim.cmd('inoremap ` <C-x><C-o>')
