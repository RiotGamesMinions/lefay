# Let people know of emergent / constant questions
#
# hot topic anything = whatever you want to rememeber
# forget hot topic anything
# hot topics

module.exports = (robot) ->
  robot.brain.data.hot_topics or= {}

  robot.respond /hot topic (.*) = (.*)/i, (msg) ->
    robot.brain.data.hot_topics[msg.match[1].toLowerCase()] = msg.match[2]
    msg.send "OK, I'll remember that and let people know."

  robot.respond /forget hot topic (.*)/i, (msg) ->
    if robot.brain.data.hot_topics[msg.match[1].toLowerCase()]?
      delete robot.brain.data.hot_topics[msg.match[1].toLowerCase()]
      msg.send "OK, forgot it."
    else
      msg.send "Didn't know anything about that anyway."

  robot.respond /hot topics/i, (msg) ->
    robot.brain.data.hot_topics or= {}
    memories = for phrase, memory of robot.brain.data.hot_topics
      "#{phrase} -> #{memory}"
    msg.send memories.join("\n")

  robot.hear /(.+)/i, (msg) ->
    text = msg.message.text
    check = (text, phrase) ->
      r = phrase.match /^\/(.*)\/$/
      if r
        phrase = RegExp(r[1], 'i')
      !!text.toLowerCase().match(phrase)
    
    unless text.match 'hot topic'
      memories = for phrase, memory of robot.brain.data.hot_topics when check(text, phrase)
        memory
      if memories.length > 0
        msg.send memories.join("\n")
