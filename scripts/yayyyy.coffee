# Yayyyyyyyy
#
#

yays = [
  "http://mlkshk.com/r/KSB3.gif",
  "yayyyyyyy!\nhttp://i.imgur.com/zyJuF.gif"
]

module.exports = (robot) ->
  robot.hear /\byay+\b/i, (msg) ->
    msg.send msg.random yays