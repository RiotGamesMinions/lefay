# What the fuck?
#

images = [
  "http://mlkshk.com/r/PWFK.gif",
  "http://i49.tinypic.com/2vi191d.gif"
]

module.exports = (robot) ->
  robot.hear /what the fuck(.*)/i, (msg) ->
    msg.send msg.random images
