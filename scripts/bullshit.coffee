# bullshit

module.exports = (robot) ->
  robot.hear /(that's|such|what) bullshit/i, (msg) ->
    msg.send "http://s.mlkshk.com/r/13DRV.gif"

