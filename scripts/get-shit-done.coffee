# Time to get shit done
#

module.exports = (robot) ->
  robot.hear /(gsd|get shit done)/i, (msg) ->
    msg.send "http://mlkshk.com/r/GZ3R.gif"
