markov_lib = require('markov')
markov = markov_lib()

module.exports = (robot) ->
  robot.hear /(.+)/i, (msg) ->
    if /^(.*:)?markov/i.exec(msg.match[1])
      return
    else
      markov.seed msg.match[1]

  robot.hear /markov (\w+)/, (msg) ->
    try
      msg.send(markov.respond(msg.match[1], 1)[0])
    catch error
      msg.send('Sorry duder, I got confused. Now I cry. ;_;')