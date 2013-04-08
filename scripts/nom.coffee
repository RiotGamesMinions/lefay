# Time for food
#
# nom - http://i.imgur.com/Ytq3S.gif

images = [
  "http://mlkshk.com/r/PUNW.gif",
  "http://i.imgur.com/maHWu.gif"
]

module.exports = (robot) ->
  robot.hear /\bnom\b/i, (msg) ->
    msg.send msg.random images