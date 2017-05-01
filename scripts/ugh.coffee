# Description
#   Ugh
#
# Author
#   ivey

images = [
  "http://i.imgur.com/5qOPW.gif",
  "http://i.imgur.com/90Lyen2.gif"
]

module.exports = (robot) ->
  robot.hear /\bugh/i, (msg) ->
    msg.send msg.random images
