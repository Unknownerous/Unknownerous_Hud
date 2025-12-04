fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Unknownerous'
description 'Unknownerous Hud'
version '1.0'

shared_scripts {
    '@es_extended/imports.lua',
    'config.lua'
}
client_scripts {
    'client/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua'
}

files {
    'html/index.html',
    'html/assets/js/**',
    'html/assets/css/**',
}

ui_page 'html/index.html'