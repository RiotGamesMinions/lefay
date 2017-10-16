images = [
  "https://mltshp-cdn.com/r/1CI2V.gif"
]

module.exports = (robot) ->
  robot.hear /:pear\d:/i, (msg) ->
    msg.send msg.random images



