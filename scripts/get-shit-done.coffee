# What did you do?
#

module.exports = (robot) ->
  robot.hear /(what did you do|what\'d you do)/i, (msg) ->
    msg.send "http://i.imgur.com/gKVY0.gif"
