nyans = [
  "http://octodex.github.com/images/nyantocat.gif"
]

module.exports = (robot) ->
  robot.hear /(^|\s)(nyan|rainbow)(\s|$)/i, (msg) ->
    msg.send msg.random nyans
