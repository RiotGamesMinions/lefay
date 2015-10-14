module.exports = (robot) ->
  robot.hear /*yolo*$/i, (msg) ->
    msg.send "http://i.imgur.com/qqxouk6.jpg"
