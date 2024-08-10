---@type Widget
local Widget = require("lapis.html").Widget

return Widget:extend(function(self)
  div({ class = "home" }, function()
    h1("Welcome to my personal site")
    h2("Hi, My name is Leonard")
  end)
end)
