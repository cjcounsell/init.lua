return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    animate = {},
    bigfile = {},
    dashboard = {
      sections = {
        {
          section = 'terminal',
          cmd = '/usr/bin/chafa ~/.config/backgrounds/forest-walkway-3840x2160-13157.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1',
          height = 17,
          padding = 1,
        },
        {
          pane = 2,
          { section = 'keys', gap = 1, padding = 1 },
          { section = 'startup' },
        },
      },
    },
    image = {},
    indent = {},
    input = {},
    lazygit = {
      configure = true,
    },
    picker = { enabled = true },
    zen = {},
  },
  keys = {
    {
      '<leader>n',
      function()
        Snacks.notifier.show_history()
      end,
      desc = 'Show [N]otifications',
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '<leader>tz',
      function() Snacks.zen() end,
      desc = '[T]oggle [Z]en mode'
    }
  },
}
