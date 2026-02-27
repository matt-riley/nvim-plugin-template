-- lua/myplugin/init.lua
local M = {}

--- myplugin.nvim
---
--- A minimal Neovim plugin template with typed configuration and a simple API.
---
---@tag myplugin

--- Plugin configuration.
---@class myplugin.Config
---@field greeting string The message returned by `greet()`. Default: `"Hello from myplugin!"`

---@private
local defaults = {
  greeting = "Hello from myplugin!",
}

---@private
---@type myplugin.Config
M.config = vim.deepcopy(defaults)

--- Configure the plugin with user options.
---
--- Call this once in your Neovim config to override defaults.
---
---@param opts? myplugin.Config User configuration options
function M.setup(opts)
  opts = opts or {}
  vim.validate({
    greeting = { opts.greeting, "string", true },
  })
  M.config = vim.tbl_deep_extend("force", vim.deepcopy(defaults), opts)
end

--- Return the configured greeting string.
---
---@return string greeting
function M.greet()
  return M.config.greeting
end

return M
