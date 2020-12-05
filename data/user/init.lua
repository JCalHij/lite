-- put user settings here
-- this module will be loaded after everything else when the application starts

local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"
local common = require "core.common"

-- User theme
require "user.colors.javi"

-- Override data/core/config.lua
config.treeview_size = 250 * SCALE

 -- Override data/core/style.lua
style.scrollbar_size = common.round(10 * SCALE)

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

