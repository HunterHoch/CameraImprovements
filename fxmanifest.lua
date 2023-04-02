fx_version 'adamant'

game 'gta5'

author 'Hunter Hoch'

description 'Just a simple script that shows how to utilize the in-game camera for a more cinematic experience.'

shared_scripts {
	'config.lua'
}

client_script {
    'config.lua',
    'client/events.lua',
    'client/functions.lua'
}

server_script 'server/main.lua'

lua54 'yes'