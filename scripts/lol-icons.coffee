# various LOL images
#
# kennen me - dancing kennen
# phreak me - dancing phreak
# mordekaiser me - dancing mordekaiser
# garen me - spinning garen
# olaf me - running olaf
# amumu me - huggy amumu
# annie me - whip my bear back and forth
# malzahar me - running malzahar
# warwick me - nomming warwick

module.exports = (robot) ->
  robot.respond /kennen me/i, (msg) ->
    msg.send "http://i.imgur.com/y2Sr9.gif"

  robot.respond /phreak me/i, (msg) ->
    msg.send "http://i.imgur.com/TdAPW.gif"

  robot.respond /mordekaiser me/i, (msg) ->
    msg.send "http://i.imgur.com/5buMa.gif"

  robot.respond /garen me/i, (msg) ->
    msg.send "http://i.imgur.com/ZX5nV.gif"

  robot.respond /olaf me/i, (msg) ->
    msg.send "http://i.imgur.com/12GiL.gif"

  robot.respond /amumu me/i, (msg) ->
    msg.send "http://i.imgur.com/UL1rB.gif"

  robot.respond /annie me/i, (msg) ->
    msg.send "http://i56.tinypic.com/2gw9lyd.jpg"

  robot.respond /malzahar me/i, (msg) ->
    msg.send "http://i.imgur.com/1X1wJ.gif"

  robot.respond /warwick me/i, (msg) ->
    msg.send "http://i.imgur.com/UdJzq.gif"
  
  robot.hear /true terror/i, (msg) ->
    msg.send "http://www.youtube.com/watch?v=5GyxaeeoXJk"
