module.exports = (robot) ->
  robot.hear /i'm out/i, (msg) ->
    msg.send "http://gifs.gifbin.com/062009/1245227615_colin_farrel.gif"
