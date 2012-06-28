# Expands a message to a named group of people into their individual names
#
# merlin: <your message>

merlin_remote_members = [
  "cdickerson",
  "michael.ivey",
]

ef_devs = [
  "Jesse Howarth",
  "Josiah Kiehl",
  "michael.ivey",
  "Chong Yan",
]

merlin_lax_members = [
  "Jesse Howarth",
  "Josiah Kiehl",
  "Jkiehl",
  "Jamie Winsor",
  "Chong Yan",
]

chef_repo_mergers = [
  "Jesse Howarth",
  "michael.ivey",
  "cdickerson",
]

merlin_members = merlin_remote_members.concat merlin_lax_members

module.exports = (robot) ->
  robot.hear /^(merlin|dat)( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_members.join(", ") + ": ^^"

  robot.hear /^(merlin|dat)-lax( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_lax_members.join(", ") + ": ^^"

  robot.hear /^(merlin|dat)-remote( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_remote_members.join(", ") + ": ^^"

  robot.hear /^(glastonbury|ef|environment factory|factory)( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send ef_devs.join(", ") + ": ^^"

  robot.hear /^mergers:(.+)/i, (msg) ->
    msg.send chef_repo_mergers.join(", ") + ": ^^"
