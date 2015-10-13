# Description
#   aaandy
#
# Author
#   ealtorfer

images = [
  "http://i.imgur.com/r2V9WIX.png"
]

module.exports = (robot) ->
  robot.hear /\ba{3,}ndy/i, (msg) ->
    msg.send msg.random images
