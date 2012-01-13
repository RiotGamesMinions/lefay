# Display a teemo video if anyone says on duty
#

module.exports = (robot) ->
  robot.hear /on duty/i, (msg) ->
    msg.send "http://vimeo.com/34497207"
