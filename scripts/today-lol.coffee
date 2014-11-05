# LoL puns
#
# today in lol - get a LoL pun
#

today = [
  "I reported Maokai for having a high amount of leaves",
  "Caitlyn wouldn't let me farm in lane so I reported her for harassment",
  "I reported a Cho'Gath For intentional feeding",
  "I reported a Brand for excessive flaming",
  "I reported Leona for being disruptive",
  "I reported an Irelia for refusing to surrender",
  "I reported a Tryndamere For Negative Attitude",
  "I reported a Blitzcrank For sexual harassment",
  "I reported Rammus for refusing to communicate with the team",
  "I reported Trundle for excessive trolling",
  "I reported Orianna because she kept dropping The Ball",
  "Annie reported me. ᶘ﻿ ᵒᴥᵒᶅ",
  "I reported our Sona for failure to communicate",
  "I reported Lee Sin, for having no map awareness",
  "I reported Lux for using colorful language",
  "I reported Anivia's Wall for assisting enemy team",
  "I reported Lee Sin because he didn't read the Summoner's Code",
  "Nasus was a total ****. Spent all game barking orders",
  "I reported a Gragas for drunk gaming",
  "I reported a Shaco for decieving me",
  "I reported the AFK Teemo for not being on duty",
  "I reported their Soraka for Assisting the Enemy Team",
  "I reported Skarner for bugging me",
  "I reported Wukong - wouldn't stop monkeying around",
  "I reported Cho'Gath. He kept screaming at me",
  "I reported Twisted Fate. He stacked the deck in their favor.",
  "Jarvan really held our team together.",
  "Veigar tried, but he always came up a little short."
]

module.exports = (robot) ->
  robot.respond /today in lol/i, (msg) ->
    msg.send "Today #{msg.random today}."
