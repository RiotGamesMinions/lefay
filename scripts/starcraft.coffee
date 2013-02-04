module.exports = (robot) ->
  robot.hear /^wat$/i, (msg) ->
    msg.send "http://i.imgur.com/3CDBj73.png"

  robot.hear /^win$/i, (msg) ->
    msg.send "http://1.bp.blogspot.com/-0KhRbSdEkuE/TymtgxJtcRI/AAAAAAAAArY/zGVzZt5dQ1w/s379/so-much-win-starcraft-reaction.gif"

  robot.hear /.*(single point of failure|spof|artosis pylon).*/i, (msg) ->
    msg.send "http://i.imgur.com/JeSct.jpg"

  robot.hear /.*(thor).*/i, (msg) ->
    msg.send msg.random([
      "http://i1022.photobucket.com/albums/af346/ThizzyMarley_Starcraft/Terran/Animation19thor.gif",
      "http://www.pcgameshardware.com/screenshots/original/2008/08/Thor_Wreckage_Animated.gif",
      "http://images4.wikia.nocookie.net/__cb20090510213650/starcraft/images/e/ed/Thor_SC2_Anim1.gif",
      "http://wiki.teamliquid.net/starcraft/images2/6/6b/Thor.gif"
    ])
