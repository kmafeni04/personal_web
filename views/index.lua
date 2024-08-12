---@type Widget
local Widget = require("lapis.html").Widget

return Widget:extend(function(self)
  div({ class = "home flex-col-center" }, function()
    h1("Welcome to my personal site")
  end)
end)
