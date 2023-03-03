local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
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
vim.opt.rtp:prepend(lazypath)


local plugins = {
  'tpope/vim-commentary',
  'nvim-tree/nvim-tree.lua',
  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-web-devicons',

  -- Git
  'tpope/vim-fugitive',
  'airblade/vim-gitgutter',

  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-latex-symbols',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-look',
  'saadparwaiz1/cmp_luasnip',
  --  Snippets
  'L3MON4D3/LuaSnip',
  -- Snippet collection (Optional)
  'rafamadriz/friendly-snippets',

  -- LSP
  'https://github.com/onsails/lspkind.nvim',
  'VonHeikemen/lsp-zero.nvim',
  'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim',

  -- Undotree
  'mbbill/undotree',

  -- Writing enhancements
  'preservim/vim-pencil',
  'folke/zen-mode.nvim',
  'junegunn/limelight.vim',

  -- Math Latex preview
  'jbyuki/nabla.nvim',

  -- Smooth scrolling
  'karb94/neoscroll.nvim',

  -- Background transparency
  'xiyaowong/nvim-transparent',

  -- This plugin is to use tabs by default
  -- {'akinsho/bufferline.nvim', tag = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'}

  -- VimWiki
  {
  'vimwiki/vimwiki',
  init = function()
      vim.g.vimwiki_list = {
          {
              path = '~/Notes/problems/',
              syntax = 'markdown',
              ext  = '.md',
              custom_wiki2html = '~/bin/markdown_py2',
              nested_syntaxes = {
                  ['python'] = 'python',
                  ['c++'] = 'cpp',
              }
          }
      }
      vim.g.vimwiki_ext2syntax = {
          ['.md'] = 'markdown',
          ['.markdown'] = 'markdown',
          ['.mdown'] = 'markdown',
      }
      vim.g.vimwiki_conceal_pre = 1
      -- vim.g.vimwiki_folding = 'expr'
      vim.g.vimwiki_filetypes = {'markdown'}
  end,
  },

  -- Colorschemes
  'ellisonleao/gruvbox.nvim',
  'folke/tokyonight.nvim',
  'sainnhe/gruvbox-material',

  -- Autopairs
  {
  "windwp/nvim-autopairs",
  config = true
  },

  -- Treesitter
  'nvim-treesitter/nvim-treesitter',
  'nvim-treesitter/playground',

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  -- Tmux navigation
  { 'alexghergh/nvim-tmux-navigation', config = function()
    require'nvim-tmux-navigation'.setup {
      disable_when_zoomed = true, -- defaults to false
      keybindings = {
        left = "<C-h>",
        down = "<C-j>",
        up = "<C-k>",
        right = "<C-l>",
        last_active = "<C-\\>",
        next = "<C-Space>",
      }
    }
  end
  },

  -- Markdown
  { "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- Dashboard
  {
    'glepnir/dashboard-nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'}
  },

  -- Which-key
  {
    "folke/which-key.nvim",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
      }
    end
  },
}

local opts = {}

require("lazy").setup(plugins, opts)
