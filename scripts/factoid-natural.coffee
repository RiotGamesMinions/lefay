# Description
#   Natural language queries for factoids
#
# Dependencies:
#   "natural": "0.1.19"
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Notes:
#   None
#
# Author:
#   ivey

FTNatural = require('natural')
FTStemmer = FTNatural.PorterStemmer

factoidkeys = [
  ['wtfischef', ['chef', 'what', 'is']],
  ['smtest', ['sparklemotion', 'monkey', 'apple']]
]

compare = (tokens, factoidkey) ->
  keywords = factoidkey[1]
  contained = (word for word in keywords when word in tokens)
  contained.length == keywords.length

module.exports = (robot) ->
  robot.hear /(.*)\?$/i, (msg) ->
    stems = FTStemmer.tokenizeAndStem(msg.match[1])
    stems.unshift msg.message.user.room.replace(/@.*/,'')
    result = (k for k in factoidkeys when compare(stems,k))
    if result[0]
      robot.receive new TextMessage(msg.message.user, "~#{result[0]}")
