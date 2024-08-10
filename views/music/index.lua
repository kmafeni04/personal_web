---@type Widget
local Widget = require("lapis.html").Widget

return Widget:extend(function(self)
  div({ class = "music" }, function()
    h1("Music")
  end)
end)
