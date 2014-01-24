# Yayyyyyyyy
#
#

yays = [
  "yayyyyyyy!\nhttp://i.imgur.com/zyJuF.gif",
  "https://31.media.tumblr.com/9452f19939e32deca4b77019566a4719/tumblr_inline_my7p4q2UJg1rynlhg.gif"
]

module.exports = (robot) ->
  robot.hear /\byay+\b/i, (msg) ->
    msg.send msg.random yays
