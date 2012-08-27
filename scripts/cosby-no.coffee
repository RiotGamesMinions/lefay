# Bill Cospy says NO
#
module.exports = (robot) ->
  robot.hear /uh uh/i, (msg) ->
    msg.send "http://mlkshk.com/r/ISTL.gif"

