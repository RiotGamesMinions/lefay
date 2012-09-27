# Display a seal of approval
#
# seal me - see a seal of approval

images = [
 "http://www.sharingmachine.com/prodimages/seal-litebox.jpg",
 "http://i.imgur.com/AEJYa.gif",
 "http://i.imgur.com/ANqXF.gif",
 "http://i.imgur.com/1f2iE.gif",
 "http://i.imgur.com/5hJBG.gif",
 "http://i.imgur.com/615ao.gif",
 "http://i.imgur.com/xjrSN.gif",
 "http://i.imgur.com/cBdJy.gif",
 "http://i.imgur.com/tSQxd.gif",
 "http://i.imgur.com/jPhxc.gif",
 "http://i.imgur.com/QPVdM.gif",
 "http://i.imgur.com/3YRs6.gif",
 "http://i.imgur.com/eyo3k.jpg",
 "http://i.imgur.com/xpGee.gif",
 "http://i.imgur.com/PtlSV.gif",
 "http://mlkshk.com/r/AHDT.gif",
 "http://mlkshk.com/r/CIUZ.gif",
 "http://i.imgur.com/GOwDa.gif",
 "http://i.imgur.com/iZHD0.gif",
 "http://i.imgur.com/Uug2x.gif",
 "http://i.imgur.com/NJcSZ.gif",
 "http://i.imgur.com/FSHXA.gif",
 "http://i.imgur.com/bpHdq.gif",
 "http://mlkshk.com/r/CYHO.gif",
 "http://i.imgur.com/uM5NJ.gif",
 "http://iforce.co.nz/i/0gi03qyg.ydq.gif",
 "http://i.imgur.com/N2FEP.gif",
 "http://mlkshk.com/r/HB8K.gif",
 "http://mlkshk.com/r/IBG9.gif",
 "http://mlkshk.com/r/IBFX.gif",
 "http://mlkshk.com/r/EK8A.gif",
 "http://mlkshk.com/r/B1VG.gif",
 "http://www.reactiongifs.com/wp-content/gallery/yes/rahr_yes.gif",
 "http://www.reactiongifs.com/wp-content/gallery/yes/thumbsupobama.gif",
 "http://www.reactiongifs.com/wp-content/gallery/yes/421.gif",
 "http://www.reactiongifs.com/wp-content/gallery/yes/tumblr_lmk67yFtva1qba256.gif",
 "http://www.reactiongifs.com/wp-content/uploads/2011/08/conana_approves87ab20690092.gif",
 "http://gifsforum.com/images/gif/clap%20clap%20clap/grand/52514906-claping-.gif",
 "http://gifsforum.com/images/gif/clap%20clap%20clap/grand/SAM-JACKSON-CLAPPING-GIF.gif",
 "http://gifsforum.com/images/gif/clap%20clap%20clap/grand/deniroclap.gif",
 "http://www.threadbombing.com/data/media/2/busey_clapping.gif",
 "http://i.imgur.com/bhKp2.gif",
 "http://i.imgur.com/3w1ej.gif",
 "http://i.imgur.com/JSBTl.gif",
 "http://i.imgur.com/NnBHS.gif",
 "http://i.imgur.com/59KTQ.gif",
 "http://i.imgur.com/M4R0O.gif",
 "http://i.imgur.com/d0l2c.gif"
]

module.exports = (robot) ->
  robot.respond /seal me/i, (msg) ->
    msg.send "http://www.sharingmachine.com/prodimages/seal-litebox.jpg"

  robot.hear /seal of approval/i, (msg) ->
    msg.send "http://www.sharingmachine.com/prodimages/seal-litebox.jpg"

  robot.hear /((good|great|nice) (work|job)|well done|fine business|excellent|so (fucking )?good)/i, (msg) ->
    msg.send msg.random images


