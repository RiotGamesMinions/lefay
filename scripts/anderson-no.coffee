# Anderson Cooper says no
#
# cooper me
module.exports = (robot) ->
  robot.respond /cooper me/i, (msg) ->
    msg.send "http://i.imgur.com/e1Bme.gif"


