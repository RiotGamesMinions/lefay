# http://www.reddit.com/r/leagueoflegends/comments/n162l/how_to_lose_at_champion_select/
#
# jhunio me - say something about tridanemer

tridanemers = [
  "i am tridanemer",
  "iam trindamer i am good",
  "why band trindamere",
  "i say i am tridnamere",
  "no band trindamere",
  "i say i trindamer",
  "i am tridnamer"
]

module.exports = (robot) ->
  robot.respond /jhunio me/i, (msg) ->
    msg.send msg.random tridanemers

  robot.hear /.*(tridanemer|trindamer|trindamere|tridnamere|trindamere|trindamer|tridnamer).*/i, (msg) ->
    msg.send msg.random tridanemers
