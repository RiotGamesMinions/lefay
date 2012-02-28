module.exports = (robot) ->
  robot.hear /duck of doom/i, (msg) ->
    msg.send "http://i.imgur.com/pYQKg.jpg"
