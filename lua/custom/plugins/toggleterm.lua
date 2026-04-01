return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-\>]],
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
    })

    local Terminal = require('toggleterm.terminal').Terminal
    local lazydocker = Terminal:new({
      cmd = "lazydocker",
      dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "double",
      },
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
      end,
    })

    function _lazydocker_toggle()
      lazydocker:toggle()
    end

    vim.keymap.set("n", "<leader>ld", "<cmd>lua _lazydocker_toggle()<CR>", {desc = "Toggle [L]azy[D]ocker"})
  end
}
