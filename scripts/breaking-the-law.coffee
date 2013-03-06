module.exports = (robot) ->
  robot.hear /breaking? the law/i, (msg) ->
    msg.send "http://mlkshk.com/r/OZ87.gif"
