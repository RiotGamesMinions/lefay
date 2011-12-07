# pizza party
#
# pizza me - let's have a pizza party
module.exports = (robot) ->
  robot.respond /pizza me/i, (msg) ->
    msg.send "http://school.discoveryeducation.com/clipart/images/pizza-party-color.gif"

  robot.hear /pizza party/i, (msg) ->
    msg.send "http://school.discoveryeducation.com/clipart/images/pizza-party-color.gif"
