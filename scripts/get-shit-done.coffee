# Time to get shit done
#

module.exports = (robot) ->
  robot.hear /\b(gsd|get shit done)\b/i, (msg) ->
    msg.send "http://mlkshk.com/r/GZ3R.gif"
