# What the fuck?
#

module.exports = (robot) ->
  robot.hear /what the fuck(.*)/i, (msg) ->
    msg.send "http://i49.tinypic.com/2vi191d.gif"
