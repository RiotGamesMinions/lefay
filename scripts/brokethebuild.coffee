# ccmerlin observer
#

images = [
  "http://i.qkme.me/1rei.jpg",
	"http://memegenerator.net/cache/instances/400x/11/11544/11821190.jpg",
  "http://troll.me/images/success-kid/broke-the-build-someone-else-fixed-it.jpg",
  "http://www.ucalgary.ca/internphoto/files/internphoto/images/BrooksRileyHat_0.jpg",
  "http://www.finalbuilder.com/Portals/0/ArticleImages/BlogImages/penance-of-doughnuts.jpg",
  "http://troll.me/images/the-most-interesting-man-in-the-world/doh-you-broke-the-build-my-friend.jpg",
  "http://troll.me/images/y-u-no/the-build-why-you-broke-it.jpg",
  "http://cdn02.cdn.thesuperficial.com/wp-content/uploads/2011/09/0907-kate-gosselin-broke-17-400x470.jpg"
]

module.exports = (robot) ->
  #robot.hear /Project (.*) build (.*): (FAILURE|STILL FAILING)/i, (msg) ->
  robot.hear /(.*) - #(\d+) FAILURE/i, (msg) ->
    msg.send msg.random images

  # robot.hear /(.*) - #(\d+) SUCCESS/i, (msg) ->
  #   msg.send "GOOD JOB, your build was a total SUCCESS!!!!1!!!! <3 <3 <3"
