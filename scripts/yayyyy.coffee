# Yayyyyyyyy
#
#

yays = [
  "yayyyyyyy!\nhttp://i.imgur.com/zyJuF.gif"
]

module.exports = (robot) ->
  robot.hear /\byay+\b/i, (msg) ->
    msg.send msg.random yays
