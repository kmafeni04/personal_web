---@type Widget
local Widget = require("lapis.html").Widget

local Timeline = require("views.dev.widgets.portfolio.timeline")
local Projects = require("views.dev.widgets.portfolio.projects")
local Skills = require("views.dev.widgets.portfolio.skills")

local NavItem = Widget:extend(function(self)
  button({ class = "nav-btn btn", _ = "on click go to the top of " .. self.target, title = self.title }, function()
    i({ class = "nf " .. self.class })
  end)
end)
local ContactLink = Widget:extend(function(self)
  a(
    { class = "contact__link btn flex-center gap-xs", href = self.link, target = "_blank" },
    function()
      i({ class = "nf " .. self.class })
      p(self.name)
    end)
end)

return Widget:extend(function(self)
  div({ class = "portfolio flex-center gap-l" }, function()
    div({ class = "portfolio__side-nav-container radius-max flex-col-center gap-s" }, function()
      i { class = "fixed nf nf-fa-angle_right" }
      div({ class = "side-nav grid-center gap-s" }, function()
        widget(NavItem({ target = "#welcome", title = "Welcome", class = "nf-fa-home" }))
        widget(NavItem({ target = "#about-me", title = "About me", class = "nf-fa-user" }))
        widget(NavItem({ target = "#timeline", title = "Timeline", class = "nf-fa-calendar" }))
        widget(NavItem({ target = "#projects", title = "Projects", class = "nf-fa-folder" }))
        widget(NavItem({ target = "#skills", title = "Skills", class = "nf-fae-tools" }))
        widget(NavItem({ target = "#contact", title = "Contact me", class = "nf-fa-envelope" }))
      end)
    end)
    div({ class = "portfolio__content grid-center gap-s" }, function()
      div({ class = "welcome flex-center flex-wrap align-center gap-s width-100 height-max", id = "welcome" }, function()
        div({ class = "welcome__item flex-basis-50 flex-col gap-xs gap-xs width-50" }, function()
          h1({ class = "portfolio__title" }, function()
            text("Hi! ")
            span({ class = "welcome__wave" }, "👋")
            text(", I'm Leonard")
          end)
          h3({ class = "portfolio__subtitle" }, "A Software Developer")
          p(
            "I am passionate about creating innovative and interactive user experiences and am ready to take on new challenges")
          button({ ["data-fit"] = true, class = "input btn", _ = "on click go to #contact" }, "Contact me")
        end)
        div({ class = "welcome__item flex-center flex-basis-50 width-50" }, function()
          image({ class = "welcome__image width-100", src = "/static/assets/computer-setup.png", alt = "welcome image" })
        end)
      end)
      div({ class = "about-me flex-center flex-wrap gap-s width-100 height-max", id = "about-me" }, function()
        div({ class = "about-me__item flex-basis-50 flex-col gap-xs width-50" }, function()
          h2({ class = "portfolio__title" }, "About me")
          p(
            "Hello! I'm Leonard Mafeni, a passionate software developer with a strong foundation in web development. I love to experiment with                       different technologies and am constantly trying to learn new things"
          )
          p("Apart from programming, I really enjoy:")
          ul({ class = "padding-i-s" }, function()
            li("Gaming")
            li("Sports")
            li("Making Music")
          end)
        end)
        div({ class = "about-me__item flex-center flex-basis-50 width-50" }, function()
          image({ class = "about-me__image width-75 radius-100", src = "/static/assets/headshot.jpg", alt = "Image of me" })
        end)
      end)
      div({ class = "timeline flex-col justify-center gap-s width-100 height-max", id = "timeline" }, function()
        h2({ class = "portfolio__title" }, "Timeline")
        div({ class = "flex-col gap-m" }, function()
          widget(Timeline())
        end)
        a({ href = "public/Leonard-Mafeni-CV.pdf", class = "input btn no-decoration" }, "Download CV")
      end)
      div({ class = "projects flex-col justify-center gap-s width-100 height-max", id = "projects" }, function()
        h2({ class = "portfolio__title" }, "Projects")
        div({ class = "flex-center flex-wrap gap-s" }, function()
          widget(Projects())
        end)
      end)
      div({ class = "skills flex-col justify-center gap-s width-100 height-max", id = "skills" }, function()
        h2({ class = "portfolio__title" }, "Skills")
        widget(Skills())
      end)
      div({ class = "contact flex-col justify-center gap-s width-100 height-max", id = "contact" }, function()
        h2({ class = "portfolio__title" }, "Contact me")
        form(
          {
            action = "https://formsubmit.co/komemafeni944@gmail.com",
            method = "POST",
            class = "contact__form flex-col-center gap-s"
          },
          function()
            div({ class = "flex gap-s flex-wrap width-100" }, function()
              input({ class = "input flex-basis-50", name = "name", placeholder = "Name", type = "text", required = true })
              input({ class = "input flex-basis-50", name = "email", placeholder = "Email", type = "email", required = true })
            end)
            textarea({ class = "contact__message input width-100", name = "message", placeholder = "Your Message...", required = true })
            input({ type = "hidden", name = "_next", value = self:build_url("portfolio") })
            input({ type = "hidden", name = "_replyto" })
            input({ type = "hidden", name = "_subject", value = "Dev Contact" })
            input({ type = "text", name = "_honey", style = "display:none" })
            button({ class = "input btn width-100" }, "Submit")
          end)
        div({ class = "flex-center gap-s" }, function()
          widget(ContactLink({
            link = "https://github.com/kmafeni04",
            class = "nf-fa-github",
            name = "Github"
          }))
          widget(ContactLink({
            link = "https://linkedin.com/in/leonard-mafeni",
            class = "nf-md-linkedin",
            name = "LinkedIn"
          }))
          widget(ContactLink({
            link = "mailto:komemafeni944@gmail.com",
            class = "nf-fa-envelope",
            name = "Email"
          }))
        end)
      end)
    end)
  end)
end)
