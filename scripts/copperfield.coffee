# All magic belongs to copperfield
#
# gotcha!

# copperfields = [
#   "http://i.imgur.com/asSfAoo.jpg",
#   "http://i.imgur.com/0PjzWYh.jpg",
#   "http://i.imgur.com/9rNIbi6.jpg",
#   "http://i.imgur.com/SxtpWpP.jpg"
# ]

module.exports = (robot) ->
  robot.hear /.*copperfield.*/i, (msg) ->
    imageMe msg, "copperfield", (url) ->
      msg.send url

imageMe = (msg, query, cb) ->
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(v: "1.0", rsz: '8', q: query, safe: 'active')
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData.results
      image  = msg.random images
      cb "#{image.unescapedUrl}#.png"
