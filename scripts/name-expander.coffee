# Expands a message to a named group of people into their individual names
#
# merlin: <your message>

merlin_remote_members = [
  "Cliff Dickerson",
  "michael.ivey",
]

merlin_lax_members = [
  "Jesse Howarth",
  "Josiah Kiehl",
  "mmatsumura",
  "Jamie Winsor"
]

merlin_members = merlin_remote_members.concat merlin_lax_members

module.exports = (robot) ->
  robot.hear /^merlin( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_members.join(", ") + ":" + msg.match[2]

  robot.hear /^merlin-lax( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_lax_members.join(", ") + ":" + msg.match[2]

  robot.hear /^merlin-remote( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_remote_members.join(", ") + ":" + msg.match[2]
