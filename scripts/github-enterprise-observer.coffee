# Watches for repo:branch_name and pastes links

module.exports = (robot) ->
  robot.hear /\bmerlin:(\w)/i, (msg) ->
    msg.send "https://github.riotgames.com/merlin/merlin/tree/#{msg.match[1]}"