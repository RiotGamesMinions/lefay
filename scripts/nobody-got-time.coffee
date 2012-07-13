# Ain't nobody got time for that

module.exports = (robot) ->
  robot.hear /(don't|ain't nobody) (have|got) time( for that)?/i, (msg) ->
    msg.send "http://mlkshk.com/r/HMCU.gif"


