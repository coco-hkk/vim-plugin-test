-- luaprint.lua

local hi = require("cprint")

luaprint = {}

function luaprint.say(name)
    print("into lua script ...")
    print(string.format("Welcome %s, I'm lua script.", name))

    hi.say(name)

    print("leaving lua script ...")
end

return luaprint
