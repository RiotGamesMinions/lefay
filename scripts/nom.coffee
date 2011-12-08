# Time for food
#
# nom - http://i.imgur.com/Ytq3S.gif
# food - http://i.imgur.com/Ytq3S.gif

module.exports = (robot) ->
  robot.hear /\bnom\b|food/i, (msg) ->
    msg.send "http://i.imgur.com/Ytq3S.gif"
