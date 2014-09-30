# All magic belongs to copperfield
#
# gotcha!

copperfields = [
  "http://i.imgur.com/asSfAoo.jpg",
  "http://i.imgur.com/0PjzWYh.jpg"
]

module.exports = (robot) ->
  robot.hear /.*copperfield.*/i, (msg) ->
    msg.send msg.random copperfields
