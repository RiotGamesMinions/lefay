# ccmerlin observer
#

images = [
  "http://i.qkme.me/1rei.jpg",
  "http://troll.me/images/success-kid/broke-the-build-someone-else-fixed-it.jpg",
  "http://www.ucalgary.ca/internphoto/files/internphoto/images/BrooksRileyHat_0.jpg"
]

module.exports = (robot) ->
  #robot.hear /Project (.*) build (.*): (FAILURE|STILL FAILING)/i, (msg) ->
  robot.hear /Project (.*) build (.*): FAILURE/i, (msg) ->
    msg.send msg.random images

  robot.hear /Project .* build .*: SUCCESS/i, (msg) ->
    msg.send "GOOD JOB, your build was a total SUCCESS!!!!1!!!! <3 <3 <3"
