# Paul Rudd isn't a douchebag
#
# load up celery man please
# can i get a printout of oyster smiling?
# do we have any new sequences?
# can i see a flarhgunnstow?

module.exports = (robot) ->
  robot.respond /load up celery man please/i, (msg) ->
    msg.send "http://www.simpleindustries.com/wp-content/uploads/2010/05/paul_sequence1.png"

  robot.respond /.*printout of oyster smiling.*/i, (msg) ->
    msg.send "http://30.media.tumblr.com/tumblr_lkg4w5D1Gi1qc39ego1_500.jpg"

  robot.hear /new sequences/i, (msg) ->
    msg.send "I have a BETA sequence I've been working on. Would you like to see it?"

  robot.respond /.*hat wobble.*/i, (msg) ->
    msg.send "Yes.\nhttp://i.imgur.com/4asZA.gif"

  robot.respond /.*flarhgunnstow.*/i, (msg) ->
    msg.send "Yes.\nhttp://29.media.tumblr.com/tumblr_l2e4bbhrzl1qzad9ao1_400.gif"
