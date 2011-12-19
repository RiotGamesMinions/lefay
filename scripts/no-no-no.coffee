module.exports = (robot) ->
  robot.hear /(what? no|no no no).*/i, (msg) ->
    msg.send "http://mlkshk.com/r/AKHF.gif"
