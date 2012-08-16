images = [
  "http://i.imgur.com/XYfUN.gif",
  "http://gifs.gifbin.com/062009/1245227615_colin_farrel.gif",
  "http://i.imgur.com/mQK1x.gif"
]

module.exports = (robot) ->
  robot.hear /i'm out/i, (msg) ->
    msg.send msg.random images
  robot.hear /tell (me|us) more/i, (msg) ->
    msg.send "http://mlkshk.com/r/BN75.gif"
  robot.hear /baws/i, (msg) ->
    msg.send "http://mlkshk.com/r/BMPM.gif"
  robot.hear /cat falling off a table/i, (msg) ->
    msg.send "http://mlkshk.com/r/BJNO.gif"
  robot.hear /\bugh/i, (msg) ->
    msg.send "http://i.imgur.com/5qOPW.gif"
  robot.hear /you got it/i, (msg) ->
    msg.send "http://28.media.tumblr.com/tumblr_ltp4xqYG2b1qzosj0o1_400.gif"
  robot.hear /brb.*killing/i, (msg) ->
    msg.send "http://i.imgur.com/kPEzh.gif"
  robot.hear /it\'s working/i, (msg) ->
    msg.send "http://i.imgur.com/fqUYl.gif"
