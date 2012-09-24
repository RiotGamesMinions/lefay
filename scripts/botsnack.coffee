# Give lefay a botsnack
#

smiles = [":)", ":D", ":3"]

module.exports = (robot) ->
  robot.hear /botsnack/i, (msg) ->
    if Math.random() < 0.75
      msg.send smiles[0]
    else
      msg.send smiles[Math.floor(Math.random() * (smiles.length-1))+1]
