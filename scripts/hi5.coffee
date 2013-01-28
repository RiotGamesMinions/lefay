# High five!
#
# ^5 - high five!

images = [
  "http://i.imgur.com/PJFpN.gif",
  "http://mlkshk.com/r/JDV6.gif",
  "http://mlkshk.com/r/NOZ9.gif"
]

module.exports = (robot) ->
  robot.respond /(hi|high|\^) ?(five|5)/i, (msg) ->
    msg.send msg.random images


