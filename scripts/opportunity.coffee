# Description
#   "Tell me more"
#
# Author
#   ealtorfer

images = [
  "http://i.imgur.com/sAoyWAj.jpg"
]

module.exports = (robot) ->
  robot.hear /tell me more/i, (msg) ->
    msg.send msg.random images
