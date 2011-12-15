# Movie quotes
#
# It'll happen
#

module.exports = (robot) ->
  robot.hear /.*one (in|out of) a million*/, (msg) ->
    msg.send "so you're telling me there's a chance: http://www.youtube.com/watch?v=yCFB2akLh4s"
