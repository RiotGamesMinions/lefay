module.exports = (robot) ->
  robot.hear /^why\?$/i, (msg) ->
    msg.send "http://i.imgur.com/JlsSaaM.gif"
