# Some of our favorite images
#
# dancing cat
#

module.exports = (robot) ->
  robot.respond /show me dancing cat/i, (msg) ->
    msg.send "https://d1ij7zv8zivhs3.cloudfront.net/assets/2719117/original/animated-dancing%20cat.gif"

  robot.respond /show me how many fucks i give/i, (msg) ->
    msg.send "http://mlkshk.com/r/AGC6.gif"

  robot.respond /show me( a)? cat in a top hat/i, (msg) ->
    msg.send "http://mlkshk.com/r/AJ1I.jpg"
