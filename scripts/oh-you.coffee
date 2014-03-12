images = [
  "http://s.mlkshk.com/r/XU0A.gif",
  "http://i.imgur.com/sDCSJ.jpg"
]

module.exports = (robot) ->
  robot.hear /oh you/i, (msg) ->
    msg.send msg.random images
