# tell $someone to stfu - ask lefay to pass along the message
# tell $someone to cheer up - ask lefay to cheer someone up
#
#

module.exports = (robot) ->
  robot.respond /tell (.*) to stfu/i, (msg) ->
    msg.send "http://mlkshk.com/r/HCDF.jpg"
  robot.respond /tell (.*) to cheer( the fuck)? up/i, (msg) ->
    msg.send "http://mlkshk.com/r/GSAY.jpg"