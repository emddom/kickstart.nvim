return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Alternatively, to only load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md",
  --   "BufNewFile " .. vim.fn.expand "~" .. "/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '/home/emddom/myObsdnVaults', -- Change this to your Obsidian vault path
      },
    },
    
    -- Optional, customize keybindings for obsidian.nvim
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/obsidian links within your vault.
      ['gf'] = {
        action = function()
          return require('obsidian').util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle check-boxes.
      ['<leader>ch'] = {
        action = function()
          return require('obsidian').util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },

    -- Optional, by default when you use `:ObsidianNew` it will generate a generic ID
    -- This sets the title as the file name
    note_id_func = function(title)
      local suffix = ''
      if title ~= nil then
        suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
      else
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. '-' .. suffix
    end,
  },
}
