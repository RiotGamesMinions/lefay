twss = require 'twss'

module.exports = (robot) ->
  robot.hear /(.*)/, (msg)->
    if twss.is msg
      msg.send "That's what she said"
