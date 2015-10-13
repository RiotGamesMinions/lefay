# Description
#   "The black wind howls"
#
# Author
#   ealtorfer

images = [
  "http://i.imgur.com/sAoyWAj.jpg"
]

module.exports = (robot) ->
  robot.hear /the black wind howls/i, (msg) ->
    msg.send msg.random images
