module.exports = (robot) ->
  robot.hear /.*(wtf|what the fuck) am i reading.*/i, (msg) ->
    msg.send "http://mlkshk.com/r/KDRQ.gif"
