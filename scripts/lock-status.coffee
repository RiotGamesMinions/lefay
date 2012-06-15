# Display the current lock status png
#

module.exports = (robot) ->
  robot.hear /lock status/i, (msg) ->
    msg.send "http://qadashboard.riotgames.com/images/mainLockStatusChart.png"