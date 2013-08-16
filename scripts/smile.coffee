module.exports = (robot) ->
  robot.hear /^:\)$/i, (msg) ->
    msg.send "http://mlkshk.com/r/TH09.gif"
