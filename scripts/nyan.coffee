nyans = [
  "http://octodex.github.com/images/nyantocat.gif"
]

module.exports = (robot) ->
  robot.hear /.*(nyan|rainbow).*/i, (msg) ->
    msg.send msg.random nyans
