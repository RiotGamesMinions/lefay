# Movie quotes
#
# It'll happen
#

module.exports = (robot) ->
  robot.hear /.*one (in|out of) a million*/i, (msg) ->
    msg.send "so you're telling me there's a chance: http://www.youtube.com/watch?v=yCFB2akLh4s"

  robot.hear /.*I don't give.*/i, (msg) ->
    msg.send "relevant: http://www.youtube.com/watch?v=-6Pbc8SQwV8"
