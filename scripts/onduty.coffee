# Display a teemo video if anyone says on duty ... original link http://vimeo.com/34497207"
#

module.exports = (robot) ->
  robot.hear /on duty/i, (msg) ->
    msg.send "http://player.vimeo.com/video/34497207?autoplay=1&loop=1"

