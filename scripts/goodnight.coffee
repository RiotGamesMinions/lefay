module.exports = (robot) ->
  robot.hear /goodnight/i, (msg) ->
    msg.send "http://mlkshk.com/r/QOH8.gif"
