---@type Widget
local Widget = require("lapis.html").Widget

return Widget:extend(function(self)
  h1("Dev Page")
  a({ href = self:url_for("dev_portfolio") }, "Portfolio")

  h2("Projects")
  h2("Blog")
end)
