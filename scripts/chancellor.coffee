module.exports = (robot) ->
  robot.hear /(chancellor)/i, (msg) ->
    msg.send "All hail Chancellor Chong!"
