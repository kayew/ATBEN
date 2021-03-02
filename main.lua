-- DO NOT DELETE THESE LINES
local discordia = require('discordia')
local client = discordia.Client()

local function readToken()
  -- Takes 2nd argument of command line (a file) and returns bot token
  local file = io.open(args[2], "r")
  local token = file:read()
  file:close()
  return token
end

client:on('ready', function()
  print('Ready to ATBEN, signed in as: '.. client.user.username)
end)

client:on('messageCreate', function(message)
  -- Converts message to all lowercase, looks for "atben". If true, ping Ben.
  if message.content:lower():find("atben") then
    message.channel:send('<@400073201700569098>')
  end
end)

client:run('Bot ' .. readToken())

