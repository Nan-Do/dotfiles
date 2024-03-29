local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/lazy/", "*", 0, 1))
require('dashboard').setup({
  theme = 'doom',
  config = {
    header = {
      '                                                       ',
      ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
      ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
      ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
      ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
      ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
      ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
      '                                                       ',
    },

    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        keymap = 'SPC f f',
        key_hl = 'Number',
        key = 'b',
        action = 'lua require(\'telescope.builtin\').find_files()'
      },
      {
        icon = ' ',
        desc = 'Start Vimwiki',
        key = 'f',
        action = ':VimwikiIndex\n:ZenMode'
      },
    },
    footer = { "Loaded " .. plugins_count .. " plugins" }  --your footer
  },
})
