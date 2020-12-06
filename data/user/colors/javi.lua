-- JCH color style

local style = require "core.style"
local common = require "core.common"

style.font = renderer.font.load(EXEDIR .. "/data/fonts/JetBrainsMono-Regular.ttf", 15 * SCALE)
style.code_font = renderer.font.load(EXEDIR .. "/data/fonts/JetBrainsMono-Regular.ttf", 18 * SCALE)

style.background = { common.color "#20202b" } -- Text edition background
style.background2 = { common.color "#26263F" } -- Overall background
style.background3 = { common.color "#1F1F46" } -- Autocomplete, Command view, ...
style.text = { common.color "#C9C9D1" } -- Overall text
style.caret = { common.color "#61efce" } -- Vertical line indicating where we are
style.accent = { common.color "#ffd152" } -- Item selection highlight
style.dim = { common.color "#615d5f" }
style.divider = { common.color "#666666" } -- Lines that separate views
style.selection = { common.color "#313866" } -- Whatever the user has selected
style.line_number = { common.color "#575566" } --
style.line_number2 = { common.color "#615d5f" }
style.line_highlight = { common.color "#242433" } --
style.scrollbar = { common.color "#454344" }
style.scrollbar2 = { common.color "#524F50" }

style.syntax["normal"] = { common.color "#C9C9D1" } --
style.syntax["symbol"] = { common.color "#C9C9D1" } --
style.syntax["comment"] = { common.color "#676773" } --
style.syntax["keyword"] = { common.color "#E06C75" } --
style.syntax["keyword2"] = { common.color "#E06C75" } --
style.syntax["number"] = { common.color "#C678DD" } --
style.syntax["literal"] = { common.color "#E06C75" } -- ?
style.syntax["string"] = { common.color "#E5C07B" } --
style.syntax["operator"] = { common.color "#C9C9D1" } -- + - / * =
style.syntax["function"] = { common.color "#98C379" } --
