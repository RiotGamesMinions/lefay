# Some of our favorite images
#
# dancing cat
#
module.export = (robot) ->
  robot.respond /show me dancing cat/i, (msg) ->
    msg.send "https://d1ij7zv8zivhs3.cloudfront.net/assets/2719117/original/animated-dancing%20cat.gif"
