# Description
#   Ugh
#
# Author
#   ivey

images = [
  "http://i.imgur.com/5qOPW.gif",
  "http://mlkshk.com/r/PV9Y.gif"
]

module.exports = (robot) ->
  robot.hear /\bugh/i, (msg) ->
    msg.send msg.random images
