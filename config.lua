local config = require("lapis.config")

config("development", {
  server = "nginx",
  port = "8080",
  code_cache = "off",
  num_workers = "1",
})

config("production", {
  server = "nginx",
  port = "80",
  code_cache = "on",
  num_workers = "auto",
})
