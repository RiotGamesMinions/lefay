module.exports = (robot) ->
  robot.hear /i'm out/i, (msg) ->
    msg.send "http://gifs.gifbin.com/062009/1245227615_colin_farrel.gif"
  robot.hear /tell (me|us) more/i, (msg) ->
    msg.send "http://mlkshk.com/r/BN75.gif"
