module.exports = (robot) ->
  robot.respond /room check/i, (msg) ->
    msg.send msg.user.room

