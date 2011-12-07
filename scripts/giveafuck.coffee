# Display a meter if anyone says "don't give a fuck"
#

module.exports = (robot) ->
  robot.hear /don't give a fuck/i, (msg) ->
    msg.send "seems pretty low: http://i.imgur.com/5PCPZ.gif"
