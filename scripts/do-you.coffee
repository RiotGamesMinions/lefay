# Description
#   @lefay do you ...?
#
# Author:
#   lcaro

module.exports = (robot) ->
  robot.respond /do you (.+)$/i, (msg) ->
    msg.reply "yes I do in fact " + msg.match[1]
