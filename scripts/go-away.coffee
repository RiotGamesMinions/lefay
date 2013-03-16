module.exports = (robot) ->
  robot.respond /go away/i, (msg) ->
    room = msg.message.user.room
    msg.reply "OK. I'll come back later."
    setTimeout (->
      robot.joinRoom room
    ), 30000
    robot.leaveRoom room
