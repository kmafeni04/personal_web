---@type Widget
local Widget = require("lapis.html").Widget

local TimelineItem = Widget:extend(function(self)
  div({ class = "timeline-itme grid gap-xs" }, function()
    h3({ class = "portfolio__subtitle" }, self.title)
    h4(self.company)
    p(self.duration)
    p(self.main_content)
  end)
end)

return Widget:extend(function(self)
  widget(TimelineItem({
    title = "Bsc. Software Engineering",
    company = "Nile University of Abuja, Nigeria",
    duration = "Nov 2020 - Present",
    main_content =
    "Undergraduate Coursework: Operating Systems; Databases; Data Structures and Algorithms; Comp. Architecture; System Analysis and Design; Software Engineering Process; Data Communications and Networking; Software Testing and Quality Assurance; Web Application Development; Object-Oriented Analysis and Design; Engineering Mobile Applications; Discrete Structures; Software Architecture and Design; Software Reverse Engineering; Human-Computer Interaction; Software Configuration and Maintenance; Software Project Management; Software Engineering Security."
  }))
  widget(TimelineItem({
    title = "Frontend Developer, Intern",
    company = "Alphatech Hub Integrated Services Ltd., Abuja, Nigeria",
    duration = "July 2022 – September 2022",
    main_content =
    "Worked on a commissioned betting dashboard using react, learning the component based systems and how to effectively make responsive websites with CSS. Created a landing page for the same company, learning how to take images and styles from figma and applying them to the project. Created a terms and conditions page for the same company, filling out the information by adding data from a server endpoint. "
  }))
  widget(TimelineItem({
    title = "Frontend Developer, Intern",
    company = "Alphatech Hub Integrated Services Ltd., Abuja, Nigeria",
    duration = "July 2023 – September 2023",
    main_content =
    "Working with HTML and CSS, performed a refresher in house course to ensure I still understood the basic concepts of web design.Learnt about Tailwind CSS and how to use it to improve development pace. Created a commissioned dashboard using react and tailwind "
  }))
  widget(TimelineItem({
    title = "IT Support/Developer, Volunteer",
    company = "Network for Health Equity & Development, Abuja, Nigeria",
    duration = "July 2023 – September 2023",
    main_content =
    "Working with HTML and CSS, performed a refresher in house course to ensure I still understood the basic concepts of web design.Learnt about Tailwind CSS and how to use it to improve development pace. Created a commissioned dashboard using react and tailwind "
  }))
end)
