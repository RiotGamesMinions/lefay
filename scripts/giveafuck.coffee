# Display a meter if anyone says "don't give a fuck"
#

module.exports = (robot) ->
  robot.hear /don't give a fuck/i, (msg) ->
    msg.send "seems pretty low: http://mlkshk.com/r/92EL"
