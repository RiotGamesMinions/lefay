# Description:
#   Make the bot leave the room for a while
#   Only works on XMPP adapter
#
# Dependencies:
#   hubot-xmpp
#
# Commands:
#   hubot go away - Make the bot leave this room 30 minutes
#
# Author:
#   ivey

module.exports = (robot) ->
  robot.respond /go away/i, (msg) ->
    room = msg.message.user.room
    msg.reply "OK. I'll come back in around 30 minutes."
    setTimeout (->
      robot.adapter.joinRoom jid: room
    ), 1800000
    robot.adapter.leaveRoom jid: room
