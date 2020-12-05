-- put user settings here
-- this module will be loaded after everything else when the application starts

local command = require "core.command"
local common = require "core.common"
local core = require "core"
local config = require "core.config"
local keymap = require "core.keymap"
local style = require "core.style"

-- User theme
require "user.colors.javi"

-- Override data/core/config.lua
config.treeview_size = 250 * SCALE

 -- Override data/core/style.lua
style.scrollbar_size = common.round(10 * SCALE)

-- Key bindings
keymap.add {
  ["alt+1"] = "treeview:toggle",

  ["ctrl+1"] = "root:switch-to-tab-1",
  ["ctrl+2"] = "root:switch-to-tab-2",
  ["ctrl+3"] = "root:switch-to-tab-3",
  ["ctrl+4"] = "root:switch-to-tab-4",
  ["ctrl+5"] = "root:switch-to-tab-5",
  ["ctrl+6"] = "root:switch-to-tab-6",
  ["ctrl+7"] = "root:switch-to-tab-7",
  ["ctrl+8"] = "root:switch-to-tab-8",
  ["ctrl+9"] = "root:switch-to-tab-9",
}


command.add(nil, {
  ["user-cmd:run"] = function()
    core.command_view:enter("CMD >", function(cmd)
      system.exec(string.format(" %q ", cmd))
    end)
  end,
})

keymap.add {
  ["alt+x"] = "user-cmd:run",
}
