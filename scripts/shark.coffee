# Display a shark
# 
# shark me - see a shark comic

module.exports = (robot) ->
  robot.respond /shark me/i, (msg) ->
    msg.send "http://loltatz.files.wordpress.com/2009/04/shaaaark.jpg"
  
  robot.hear /((i'm|i am) a shark|suck my di+ck)/i, (msg) ->
    msg.send "http://loltatz.files.wordpress.com/2009/04/shaaaark.jpg"
