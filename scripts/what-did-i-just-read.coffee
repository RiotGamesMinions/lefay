# What did I just read?
#

module.exports = (robot) ->
  robot.hear /what did I just read/i, (msg) ->
    msg.send "http://mlkshk.com/r/NR42.gif"
