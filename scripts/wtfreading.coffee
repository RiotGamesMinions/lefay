module.exports = (robot) ->
  robot.hear /.*(wtf|what the fuck) am i reading.*/i, (msg) ->
    msg.send "http://i.imgur.com/BodVUer.jpg"
