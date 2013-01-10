# When you have a problem with Chef and finally figure out why
#
# gotcha!

gotchas = [
  "http://i.imgur.com/ZknIH.jpg"
]

module.exports = (robot) ->
  robot.respond /gotcha!/i, (msg) ->
    msg.send msg.random gotchas