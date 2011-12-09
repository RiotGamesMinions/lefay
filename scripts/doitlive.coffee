# FUCK IT

module.exports = (robot) ->
  robot.hear /do it live/i, (msg) ->
    msg.send "http://media.wnyc.org/media/photologue/photos/cache/Do%20It%20Live_medium_image.jpg"

