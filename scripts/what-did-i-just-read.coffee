# What did I just read?
#

module.exports = (robot) ->
  robot.hear /what did I just read/i, (msg) ->
    msg.send "http://i.imgur.com/pvu6Ipw.gif"
