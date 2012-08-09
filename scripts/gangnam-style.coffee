# Gangnam Style
#

images = [
  "http://d2tq98mqfjyz2l.cloudfront.net/image_cache/1344515103658343_animate.gif",
  "http://d2tq98mqfjyz2l.cloudfront.net/image_cache/1343713284268989_animate.gif",
  "http://25.media.tumblr.com/tumblr_m862h8ZvuE1qeogczo1_500.gif",
  "http://25.media.tumblr.com/tumblr_m83b83yZdG1qfpzc1o2_500.gif"
]

module.exports = (robot) ->
  robot.hear /gangnam/i, (msg) ->
    msg.send msg.random images
