module.exports = (robot) ->
  robot.hear /(what? no|no no no).*/i, (msg) ->
    msg.send "http://mlkshk.com/r/AKHF.gif"
  robot.hear /nope nope/i, (msg) ->
    msg.send "http://i.imgur.com/zCtbl.gif"
  robot.hear /yes it is/i, (msg) ->
    msg.send "http://mlkshk.com/r/BVJG.gif"
  robot.hear /on my (shit )?list/i, (msg) ->
    msg.send "http://mlkshk.com/r/BURZ.gif"
  robot.hear /razzle dazzle/i, (msg) ->
    msg.send "http://mlkshk.com/r/BQVH.gif"