---@type Widget
local Widget = require("lapis.html").Widget

local Project = Widget:extend(function(self)
  div({ class = "project" }, function()
    image({ src = self.image_url, class = "project__image" })
    div({ class = "project__info flex-col-center gap-xs" }, function()
      h3({ class = "portfolio__subtitle" }, self.title)
      p({ class = "project__desc" }, self.desc)
      div({ class = "project__links flex-center gap-xs" }, function()
        if self.git_link then
          a({ href = self.git_link, target = "_blank", class = "project__link" }, function()
            i({ class = "nf nf-fa-github" })
          end)
        end
        if self.web_link then
          a({ href = self.web_link, target = "_blank", class = "project__link" }, function()
            i({ class = "nf nf-md-web" })
          end)
        end
      end)
    end)
  end)
end)

return Widget:extend(function(self)
  widget(Project({
    image_url = "/static/assets/portfolio.png",
    title = "Portfolio",
    desc = "A responsive and minimally designed website highlighting my dev experiences and talents",
    git_link = "https://github.com/kmafeni04/personal_web",
    web_link = nil
  }))
  widget(Project({
    image_url = "/static/assets/sabifinance.png",
    title = "Sabifinance",
    desc = "A gamified personal finance manager",
    git_link = "https://github.com/kmafeni04/sabifinance",
    web_link = "https://sabifinance.up.railway.app/"
  }))
  widget(Project({
    image_url = "/static/assets/studybug.png",
    title = "StudyBug",
    desc = "An interactive online learning platform for focused study sessions inclusive of AI asssisted learning ",
    git_link = nil,
    web_link = "https://www.studybug.me/"
  }))
  widget(Project({
    image_url = "/static/assets/my_watch_list.png",
    title = "My Watch List",
    desc = "A TV series watchlist aimed at making it easier to keep track of what you're watching and plan to watch ",
    git_link = "https://github.com/kmafeni04/my_watch_list/",
    web_link = "https://mywatchlist.up.railway.app/"
  }))
end)
