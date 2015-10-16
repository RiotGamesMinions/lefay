# Description
#   Jacon
#
# Author:
#   lcaro



module.exports = (robot) ->
  robot.head /@jacon/i, (msg) ->
    msg.send "@JakePearce ^"
