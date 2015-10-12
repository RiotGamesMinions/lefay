module.exports = (robot) ->
  robot.hear /^:\($/i, (msg) ->
    msg.send "http://i.imgur.com/NZBGxoF.jpg"
