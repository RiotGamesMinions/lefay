module.exports = (robot) ->
  robot.hear /alot/i, (msg) ->
    msg.send "http://i.imgur.com/Arbdd.png"
