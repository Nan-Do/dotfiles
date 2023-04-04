return {
  -- Vimwiki
  -- {
  --   "vimwiki/vimwiki",
  --   init = function()
  --     vim.g.vimwiki_list = {
  --       {
  --         path = "~/Notes/problems/",
  --         syntax = "markdown",
  --         ext = ".md",
  --         custom_wiki2html = "~/bin/markdown_py2",
  --         nested_syntaxes = {
  --           ["python"] = "python",
  --           ["c++"] = "cpp",
  --         },
  --       },
  --     }
  --     vim.g.vimwiki_ext2syntax = {
  --       [".md"] = "markdown",
  --       [".markdown"] = "markdown",
  --       [".mdown"] = "markdown",
  --     }
  --     vim.g.vimwiki_conceal_pre = 1
  --     -- vim.g.vimwiki_folding = 'expr'
  --     vim.g.vimwiki_filetypes = { "markdown" }
  --   end,
  -- },
  -- {
  --   "preservim/vim-markdown",
  --   init = function()
  --     vim.opt.foldlevelstart = 6
  --     vim.opt.conceallevel = 2
  --     vim.g.vim_markdown_no_extensions_in_markdown = 1
  --     vim.g.vim_markdown_math = 1
  --     vim.g.vim_markdown_strikethrough = 1
  --     vim.g.vim_markdown_no_default_key_mappings = 1
  --   end,
  -- },
  -- Tabularize
  { "godlygeek/tabular" },
  -- Markdown support not including concealing and syntax highlighting
  {
    "jakewvincent/mkdnflow.nvim",
    config = function()
      require("mkdnflow").setup()
    end,
  },
  -- Paste images
  { "img-paste-devs/img-paste.vim" },
  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
}
