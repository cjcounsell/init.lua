return {
  'kevinhwang91/nvim-ufo',
  dependencies = {
    'kevinhwang91/promise-async',
  },
  opts = {
    provider_selection = function()
      return { 'treesitter', 'indent' }
    end,
  },
}
