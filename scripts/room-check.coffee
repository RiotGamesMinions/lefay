module.exports = (robot) ->
  robot.respond /what room is this/i, (msg) ->
    msg.send msg.user.room

