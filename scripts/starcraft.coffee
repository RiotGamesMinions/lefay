module.exports = (robot) ->
  robot.hear /^wat$/i, (msg) ->
    msg.send "http://i.imgur.com/3CDBj73.png"

  robot.hear /^win$/i, (msg) ->
    msg.send "http://1.bp.blogspot.com/-0KhRbSdEkuE/TymtgxJtcRI/AAAAAAAAArY/zGVzZt5dQ1w/s379/so-much-win-starcraft-reaction.gif"

  robot.hear /.*(single point of failure|spof|artosis pylon).*/i, (msg) ->
    msg.send "http://i.imgur.com/JeSct.jpg"
