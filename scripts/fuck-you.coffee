# Description
#   Fuck you
#
# Author:
#   ivey

images = [
 "http://mlkshk.com/r/P4WO.gif",
 "http://i.imgur.com/50Z5z.gif",
 "http://i.imgur.com/hIqwF.jpg",
 "http://media.tumblr.com/tumblr_m5dkqkDV7B1r3zat8.gif",
 "http://i.imgur.com/RFh48.gif",
 "http://i.imgur.com/pv3sT.gif",
 "http://24.media.tumblr.com/tumblr_lem3c4zQnj1qdtfdbo1_500.gif",
 "http://i.imgur.com/Vi7cJ.gif"
]

module.exports = (robot) ->
  robot.respond /fuck you/i, (msg) ->
    msg.send msg.random images


