module.exports = (robot) ->
  robot.respond /go away/i, (msg) ->
    room = msg.message.user.room
    msg.reply "OK. I'll come back later."
    setTimeout (->
      robot.adapter.joinRoom jid: room
    ), 30000
    robot.adapter.leaveRoom jid: room
