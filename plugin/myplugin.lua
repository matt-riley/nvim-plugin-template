-- plugin/myplugin.lua
-- Auto-loaded by Neovim. Registers the :Myplugin user command.

vim.api.nvim_create_user_command("Myplugin", function()
  print(require("myplugin").greet())
end, { desc = "Run myplugin" })
