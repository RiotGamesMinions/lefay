# Utility commands surrounding Hubot uptime.
module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"

  robot.respond /DIE$/i, (msg) ->
    msg.send "Goodbye, cruel world."
    process.exit 0

  robot.respond /please.*reboot.*/i, (msg) ->
    msg.reply "Why certainly, it would be my pleasure. Back in a jiffy, everyone!"
    process.exit 0
