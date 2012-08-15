# Why the fuck would we do that?

module.exports = (robot) ->
  robot.respond /(what do you think|wdyt|should we .*)\?/i, (msg) ->
    msg.reply "Why the fuck would you do that?"

