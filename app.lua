local lapis = require("lapis")
---@type App
local app = lapis.Application()
app.layout = require "views.layout"

app:get("index", "/", function(self)
  return self:write({ render = true })
end)

app:get("dev", "/dev", function(self)
  return self:write({ render = "dev.index" })
end)

app:get("dev_portfolio", "/dev/portfolio", function(self)
  self.page_title = "Leonard Mafeni | Software Developer"
  return self:write({ render = "dev.portfolio" })
end)

app:get("dev_blog", "/dev/blog", function(self)
  return self:write({ render = "dev.blog" })
end)

app:get("music", "/music", function(self)
  return self:write({ render = "music.index" })
end)

return app
