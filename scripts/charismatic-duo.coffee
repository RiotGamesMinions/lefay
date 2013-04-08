# Description
#   Oh man, I want a looping gif of @coreyhaines and @tenderlove doing the COMPUTERING motion at the same time.
#
# Author:
#   ivey

computering = [
  "https://peepcode.com/blog/2013/charismatic-duo/img/dinosaur-hands.gif",
  "https://peepcode.com/blog/2013/charismatic-duo/img/howiprogram.gif"
]

module.exports = (robot) ->
  robot.hear /computering|this is how i program|how do you program/i, (msg) ->
    msg.send msg.random computering



