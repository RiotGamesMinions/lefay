# DID SOMEBODY SAY MAGIC?

module.exports = (robot) ->
  robot.hear /.*magic.*/i, (msg) ->
    msg.send "http://i.imgur.com/Mk76H.gif"
