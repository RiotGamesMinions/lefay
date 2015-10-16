# Description
#   Jacon
#
# Author:
#   lcaro



module.exports = (robot) ->
  robot.hear /@jacon/i, (msg) ->
    msg.send "@JakePearce ^"
