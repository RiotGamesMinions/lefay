module.exports = (robot) ->
  robot.hear /srsly/i, (msg) ->
    msg.send "http://i.imgur.com/mbpk1.gif"