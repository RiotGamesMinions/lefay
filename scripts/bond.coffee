#Statistics on who is the best Bond

images = [
  "http://media.economist.com/sites/default/files/imagecache/full-width/images/2012/10/articles/body/20121020_bkc276_0.png"
]

module.exports = (robot) ->
  robot.hear /best bond/i, (msg) ->
    msg.send "http://media.economist.com/sites/default/files/imagecache/full-width/images/2012/10/articles/body/20121020_bkc276_0.png"