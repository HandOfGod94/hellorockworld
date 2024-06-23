package = "hellorockworld"
rockspec_format = "3.0"
version = "dev-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
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
  "amalg == 0.8-1"
}
build = {
   type = "command",
   build_command = [[lua_modules/bin/amalg.lua src -o dist/hellorockworld.lua]],
   install = {
     bin = {
       hellorockworld = "dist/hellorockworld.lua"
     }
   },
   modules = {
     hellorockworld = "src/init.lua"
   }
}
