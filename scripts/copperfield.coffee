# All magic belongs to copperfield
#
# gotcha!

copperfields = [
  "http://i.imgur.com/asSfAoo.jpg"
]
module.exports = (robot) ->
    msg.send ""

module.exports = (robot) ->
  robot.hear /.*copperfield.*/i, (msg) ->
    msg.send msg.random copperfields
