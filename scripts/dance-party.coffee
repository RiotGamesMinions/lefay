# It's a dance party
#
# dance party - Dance party time
#

dances = [
  "http://i.imgur.com/9FwAt.gif",
  "http://i.imgur.com/3vvFz.gif",
  "http://i.imgur.com/nehWb.gif",
  "http://i.imgur.com/YuuJH.gif",
  "http://i.imgur.com/Ui2Py.gif",
  "http://i.imgur.com/Mrixe.gif",
  "http://i.imgur.com/iK28d.gif",
  "http://i.imgur.com/02B1k.gif",
  "http://i.imgur.com/I1xPZ.gif",
  "http://i.imgur.com/OUfZZ.gif",
  "http://i.imgur.com/OSQIN.gif",
  "http://i.imgur.com/dxZJi.gif",
  "http://i.imgur.com/kE5D0.gif",
  "http://i.imgur.com/pSgg6.gif",
  "http://i.imgur.com/z9mnG.gif",
  "http://i.imgur.com/iUKts.gif",
  "http://i.imgur.com/InBIn.gif",
  "http://i.imgur.com/VwmFt.gif",
  "http://i.imgur.com/DFGNp.gif",
  "http://media.tumblr.com/tumblr_lrzrlymUZA1qbliwr.gif",
  "http://3deadmonkeys.com/gallery3/var/albums/random_stuff/Carlton-Dance-GIF.gif",
  "http://i.imgur.com/a6Naj.gif"
]

module.exports = (robot) ->
  robot.hear /.*(dance party).*/i, (msg) ->
    msg.send msg.random dances