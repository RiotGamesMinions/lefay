module.exports = (robot) ->
  robot.hear /oh you/i, (msg) ->
    msg.send "http://i.imgur.com/sDCSJ.jpg"