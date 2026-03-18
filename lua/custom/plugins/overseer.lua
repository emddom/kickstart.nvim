return {
  {
    'stevearc/overseer.nvim',
    opts = {},
    keys = {
      { '<leader>or', '<cmd>OverseerRun<cr>', desc = '[O]verseer [R]un Task' },
      { '<leader>ot', '<cmd>OverseerToggle<cr>', desc = '[O]verseer [T]oggle UI' },
      { '<leader>oc', '<cmd>OverseerConfig<cr>', desc = '[O]verseer [C]onfig' },
    },
    config = function(_, opts)
      require('overseer').setup(opts)
    end,
  },
}
