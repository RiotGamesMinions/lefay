# Display a shark
#
# transformer me - see a dancing transformer

module.exports = (robot) ->
  robot.respond /transformer me/i, (msg) ->
    msg.send "http://i.imgur.com/VzB0e.gif"
