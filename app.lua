local lapis = require("lapis")
---@type App
local app = lapis.Application()
app.layout = require "views.layout"

app:get("index", "/", function(self)
  return self:write({ render = true })
end)

app:get("portfolio", "/portfolio", function(self)
  self.page_title = "Leonard Mafeni | Software Developer"
  return self:write({ render = true })
end)

app:get("music", "/music", function(self)
  return self:write({ render = "music.index" })
end)

return app
