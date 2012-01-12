# Cool. Cool cool cool.

module.exports = (robot) ->
  robot.hear /cool cool cool/i, (msg) ->
    msg.send "http://www.youtube.com/watch?v=8IIrf_JSuQk"