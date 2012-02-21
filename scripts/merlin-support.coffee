# Track Merlin support person
#
# support update Rick Flair, 2125551212 or ping on Twitter
# <person> has support this sprint - tell lefay who is doing support
# support can be reached at <phone number> - tell lefay how the support person can be reached
# who is support?              - find out who is covering merlin support

whoHasSupport = (robot) ->
  "#{robot.brain.data.support['person']} has Merlin support this sprint: #{robot.brain.data.support['contact']}."

module.exports = (robot) ->
  robot.respond /support update ([^,]+), (.*)/i, (msg) ->
    robot.brain.data.support = {person: msg.match[1], contact: msg.match[2]}
    msg.topic whoHasSupport(robot)

  robot.respond /(.*) has support this sprint/i, (msg) ->
    robot.brain.data.support or= {}
    robot.brain.data.support['person'] = msg.match[1]
    msg.topic whoHasSupport(robot)

  robot.respond /support (can be reached at|contact info\w* is) (.*)/i, (msg) ->
    robot.brain.data.support or= {}
    robot.brain.data.support['contact'] = msg.match[2]
    msg.topic whoHasSupport(robot)

  robot.hear /(who (has|is)|who\'s)?\s*support\?/, (msg) ->
    msg.send whoHasSupport(robot)
