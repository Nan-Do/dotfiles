vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.termguicolors = true

-- Search options
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wrapscan = true

-- Indent options
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true

-- Line options
vim.o.showmatch = true
-- vim.o.showbreak = '+++'
vim.o.textwidth = 120
vim.o.scrolloff = 5
vim.wo.linebreak = true
vim.wo.colorcolumn = '80'

-- Move swapfiles and backupfiles to ~/.cache
vim.o.directory = os.getenv('HOME') .. '/.cache/nvim'
vim.o.backup = true
vim.o.backupdir = os.getenv('HOME') .. '/.cache/nvim'

-- Enable undo features, even after closing vim
vim.o.undofile = true
vim.o.undodir = os.getenv('HOME') .. '/.cache/nvim'
vim.o.undolevels = 10000

-- Lazy redraw
vim.o.lazyredraw = true

-- Set spelling
vim.o.spell = true

-- For git
vim.wo.signcolumn = 'yes'

-- Mouse support
vim.o.mouse = 'a'

-- System clipboard
vim.opt.clipboard = 'unnamedplus'
