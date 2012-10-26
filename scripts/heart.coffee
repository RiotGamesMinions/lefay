replies = [
  "dawwww.",
  "<3 u 2",
  "back atcha"
]

module.exports = (robot) ->
  robot.respond /<3/, (msg) ->
    msg.reply msg.random replies