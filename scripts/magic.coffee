# DID SOMEBODY SAY MAGIC?
images = [
  "http://i.imgur.com/Mk76H.gif",
  "http://weknowmemes.com/wp-content/uploads/2013/07/hey-kids-wanna-buy-some-magic.jpg"
]

module.exports = (robot) ->
  robot.hear /.*magic(\s|$)/i, (msg) ->
    msg.send msg.random images
