# Inspect the data in redis easily
#
# show users - Display all users that hubot knows about
# show storage - Display the contents that are persisted in redis
#

Util = require "util"

module.exports = (robot) ->
  robot.respond /show storage$/i, (msg) ->
    output = Util.inspect(robot.brain.data, false, 4)
    msg.send output
