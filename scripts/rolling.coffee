# Description
#   They see me rolling.
#
#  Author:
#   ivey


module.exports = (robot) ->
  robot.hear /let's roll|see me rollin/i, (msg) ->
    msg.send "http://mlkshk.com/r/PWID.gif"