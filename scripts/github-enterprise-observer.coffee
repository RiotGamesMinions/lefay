# Watches for repo:branch_name and pastes links

ghe_base_url = "https://gh.riotgames.com/merlin"

ghe_responder = (repo, target) ->
  if target.match(/[a-f0-9]{40}/ig)
    return "#{ghe_base_url}/#{repo}/commit/#{target}"
  return "#{ghe_base_url}/#{repo}/tree/#{target}"

module.exports = (robot) ->
  robot.hear /\bmerlin:(\w+)\b/i, (msg) ->
    return
    if msg.message.text.match(/thor merlin:/)
      return
    msg.send(ghe_responder("merlin", msg.match[1]))