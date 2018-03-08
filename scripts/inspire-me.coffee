# Display an inspirational image
# 
# inspire me - see an inspirational image

inspire= (robot, msg) ->
  robot.http("http://inspirobot.me/api?generate=true") 
    .get() (err, res, body) ->
      if err 
        console.log(body)
      else
        msg.send body

module.exports = (robot) ->
  robot.respond /inspire me/i, (msg) ->
    inspire(robot,msg)
    
  robot.hear /(inspiration)/i, (msg) ->
    inspire(robot,msg)
