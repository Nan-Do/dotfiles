require("zen-mode").setup {
  window = {
    backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    -- height and width can be:
    -- * an absolute number of cells when > 1
    -- * a percentage of the width / height of the editor when <= 1
    -- * a function that returns the width or the height
    width = 80, -- width of the Zen window
    height = 1, -- height of the Zen window
    -- by default, no options are changed for the Zen window
    -- uncomment any of the options below, or add other vim.wo options you want to apply
    options = {
      signcolumn = "yes", -- disable signcolumn
      number = false, -- disable number column
      relativenumber = false, -- disable relative numbers
      cursorline = false, -- disable cursorline
      cursorcolumn = false, -- disable cursor column
      foldcolumn = "0", -- disable fold column
      list = false, -- disable whitespace characters
    },
  },
  plugins = {
    -- disable some global vim options (vim.o...)
    -- comment the lines to not apply the options
    options = {
      enabled = true,
      ruler = true, -- disables the ruler text in the cmd line area
      showcmd = true, -- disables the command in the last line of the screen
    },
    twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
    gitsigns = { enabled = false }, -- disables git signs
    tmux = { enabled = true }, -- disables the tmux statusline
  },
  -- callback where you can add custom code when the Zen window opens
  on_open = function(win)
    vim.cmd("Limelight")
    vim.cmd("PencilSoft")
  end,
  -- callback where you can add custom code when the Zen window closes
  on_close = function()
    vim.cmd("Limelight!")
    vim.cmd("PencilOff")
  end,
}

local cmd = vim.cmd

-- Pencil
cmd [[
  augroup Pencil
    autocmd!
    autocmd FileType markdown,mkd call pencil#init()
    autocmd FileType vimwiki,text call pencil#init()
  augroup END
]]