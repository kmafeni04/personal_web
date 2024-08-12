---@type Widget
local Widget = require("lapis.html").Widget

local NavBar = Widget:extend(function(self)
  nav({ class = "top-nav flex-center fixed gap-s padding-b-xs width-100" }, function()
    a({ href = self:url_for("index") }, "Home")
    a({ href = self:url_for("dev") }, "Dev")
    a({ href = self:url_for("music") }, "Music")
  end)
end)

return Widget:extend(function(self)
  html(function()
    head(function()
      meta({ charset = "UTF-8" })
      meta({ name = "viewport", content = "width=device-width, initial-scale=1" })
      title(self.page_title or "Leonard Mafeni")
      link({ rel = "stylesheet", href = "https://www.nerdfonts.com/assets/css/webfont.css" })
      link({ rel = "stylesheet", href = "/static/css/reset.css" })
      link({ rel = "stylesheet", href = "/static/css/utility.css" })
      link({ rel = "stylesheet", href = "/static/css/index.css" })
      link({ rel = "stylesheet", href = "/static/css/portfolio.css" })
      script({ src = "/static/js/hyperscript.min(0.9.12).js" })
    end)
    body(function()
      header(function()
        widget(NavBar())
      end)
      main({ class = "flex-col-center padding-i-m padding-b-l" }, function()
        self:content_for("inner")
        button(
          {
            ["data-inverse"] = true,
            class = "to-top input btn flex-center radius-100",
            _ =
            "on click go to the top of the window"
          },
          function()
            i({ class = "nf nf-cod-triangle_up" })
          end)
      end)
      footer({ class = "flex-center padding-b-xs width-100" }, function()
        p("Copyright © Leonard Mafeni 2024")
      end)
    end)
  end)
end)
