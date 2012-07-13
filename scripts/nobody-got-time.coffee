# Ain't nobody got time for that

module.exports = (robot) ->
  robot.hear /nobody got time for that/i, (msg) ->
    msg.send "http://mlkshk.com/r/HMCU.gif"


