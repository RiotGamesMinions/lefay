module.exports = (robot) ->
  robot.hear /i'm out/i, (msg) ->
    msg.send "http://gifs.gifbin.com/062009/1245227615_colin_farrel.gif"
  robot.hear /tell (me|us) more/i, (msg) ->
    msg.send "http://mlkshk.com/r/BN75.gif"
  robot.hear /baws/i, (msg) ->
    msg.send "http://mlkshk.com/r/BMPM.gif"
  robot.hear /it work(s|ed)/i, (msg) ->
    msg.send "http://mlkshk.com/r/BM7L.gif"
  robot.hear /cat falling off a table/i, (msg) ->
    msg.send "http://mlkshk.com/r/BJNO.gif"
  robot.hear /ugh/i, (msg) ->
    msg.send "http://i.imgur.com/5qOPW.gif"
  robot.hear /what.*going on/i, (msg) ->
    msg.send "http://i.imgur.com/pgG2z.gif"
  robot.hear /you got it/i, (msg) ->
    msg.send "http://28.media.tumblr.com/tumblr_ltp4xqYG2b1qzosj0o1_400.gif"
  robot.hear /you got it/i, (msg) ->
    msg.send "http://28.media.tumblr.com/tumblr_ltp4xqYG2b1qzosj0o1_400.gif"


