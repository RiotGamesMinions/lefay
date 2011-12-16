# HTTP Status Cats
#
# status cat <STATUS CODE> - show a status cat
#


module.exports = (robot) ->
  robot.reply /status cat (\d+)/i, (msg) ->
    msg.send "http://httpcats.herokuapp.com/#{msg.match[1]}.jpg"
