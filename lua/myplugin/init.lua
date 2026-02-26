-- lua/myplugin/init.lua
local M = {}

--- Default configuration.
local defaults = {
  greeting = "Hello from myplugin!",
}

M.config = vim.deepcopy(defaults)

--- Configure the plugin with user options.
--- @param opts? table User configuration options
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", vim.deepcopy(defaults), opts or {})
end

--- Return a greeting string.
--- @return string
function M.greet()
  return M.config.greeting
end

return M
