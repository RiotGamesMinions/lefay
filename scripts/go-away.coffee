module.exports = (robot) ->
  robot.respond /(stop coming in here|go away|gtfo)/i, (msg) ->
    msg.send "Ugh, sorry. Slack doesn't allow us bots to leave on our own. You can either ask a slack admin in #ask-slack to remove me, or just make me shut up with `@lefay mute`"
