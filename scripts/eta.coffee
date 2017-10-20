module.exports = (robot) ->
  robot.hear /.*(can i get|do we have) an eta.*/i, (msg) ->
    msg.send "https://mltshp-cdn.com/r/1CJ5T.gif"
