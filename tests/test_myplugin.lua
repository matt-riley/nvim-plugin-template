local MiniTest = require("mini.test")
local T = MiniTest.new_set()

local myplugin = require("myplugin")

local setup_set = MiniTest.new_set({
  hooks = {
    pre_case = function()
      myplugin.setup()
    end,
  },
})

setup_set["setup() uses default config"] = function()
  MiniTest.expect.equality(myplugin.config.greeting, "Hello from myplugin!")
end

setup_set["setup() merges user options"] = function()
  myplugin.setup({ greeting = "Hi!" })
  MiniTest.expect.equality(myplugin.config.greeting, "Hi!")
end

T["setup"] = setup_set

local greet_set = MiniTest.new_set({
  hooks = {
    pre_case = function()
      myplugin.setup()
    end,
  },
})

greet_set["greet() returns default greeting"] = function()
  MiniTest.expect.equality(myplugin.greet(), "Hello from myplugin!")
end

greet_set["greet() returns custom greeting after setup"] = function()
  myplugin.setup({ greeting = "Custom!" })
  MiniTest.expect.equality(myplugin.greet(), "Custom!")
end

T["greet"] = greet_set

return T
