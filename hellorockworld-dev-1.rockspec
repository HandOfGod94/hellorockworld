package = "hellorockworld"
rockspec_format = "3.0"
version = "dev-1"
source = {
   url = "git@github.com:HandOfGod94/hellorockworld.git",
   tag = "v0.1.0-1"
}
description = {
   homepage = "https://handofgod94.github.io",
   license = "MIT"
}
dependencies = {
  "lua >= 5.4",
  "http == 0.4-0"
}
build_dependencies = {
  "fennel == 1.4.2"
}
build = {
   type = "command",
   build_command = [[fennel --lua ./lua --require-as-include --compile hellorockworld/init.fnl > dist/hellorockworld.lua]],
   install = {
     bin = {
       hellorockworld = "dist/hellorockworld.lua"
     }
   },
   modules = {
     hellorockworld = "dist/hellorockworld.lua",
   }
}
