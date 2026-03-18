-- File: ~/.config/nvim/lua/kickstart/plugins/vimwiki.lua

return {
  'vimwiki/vimwiki',
  
  -- The 'init' function runs before the plugin is loaded.
  -- This is the ideal place to set up global configurations.
  init = function()
    -- Set global variables for vimwiki
    -- The 'vim.g' object is how you set global 'g:' variables in Lua.
    vim.g.vimwiki_list = {
      {
 --       path = '~/Notes/',
        path = '~/vimwiki/',
        syntax = 'markdown',
        ext = 'md',
      },
    }
  end,

  -- The 'keys' table is the lazy.nvim way to set keybindings.
  -- It makes sure the plugin is loaded only when you press the key.
  keys = {
    -- The key mapping for the main VimWiki index.
    -- '<Leader>ww' is the standard shortcut.
    { "<Leader>ww", "<Plug>VimwikiIndex", desc = "Vimwiki - Index" },

    -- The key mapping for the diary.
    { "<Leader>w<Leader>w", "<Plug>VimwikiDiaryIndex", desc = "Vimwiki - Diary" },
  },
}
