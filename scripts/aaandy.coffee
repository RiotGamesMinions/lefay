# Description
#   aaandy
#
# Author
#   ealtorfer

images = [
  "http://i.imgur.com/r2V9WIX.png"
]

module.exports = (robot) ->
  robot.hear /\baaandy/i, (msg) ->
    msg.send msg.random images
