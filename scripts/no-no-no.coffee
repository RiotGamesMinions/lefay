module.exports = (robot) ->
  robot.hear /(what? no|no no no).*/i, (msg) ->
    msg.send "http://mlkshk.com/r/AKHF.gif"
  robot.hear /yes it is/i, (msg) ->
    msf.send "http://mlkshk.com/r/BVJG.gif"