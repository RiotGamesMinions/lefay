module.exports = (robot) ->
  robot.hear /^:\)$/i, (msg) ->
    msg.send "https://i.imgur.com/kIfsLeD.gif"
