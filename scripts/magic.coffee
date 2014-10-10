# DID SOMEBODY SAY MAGIC?

module.exports = (robot) ->
  robot.hear /.*magic\s|$/i, (msg) ->
    msg.send "http://i.imgur.com/Mk76H.gif"
