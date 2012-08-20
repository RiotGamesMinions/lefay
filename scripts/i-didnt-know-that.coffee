module.exports = (robot) ->
  robot.hear /i didn't know that/i, (msg) ->
    msg.send "http://i.imgur.com/OLdNS.jpg"
