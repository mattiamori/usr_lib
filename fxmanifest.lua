fx_version "adamant"
game "gta5"
lua54 'yes'

client_scripts { "client/*.lua" }

shared_scripts { "config.lua" }

server_scripts { "server/*.lua", "@oxmysql/lib/MySQL.lua", }
