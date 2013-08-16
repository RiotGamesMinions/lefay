module.exports = (robot) ->
  robot.hear /^why\?$/i, (msg) ->
    msg.send "http://mlkshk.com/r/THBX.gif"
