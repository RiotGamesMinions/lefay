# Checks to see if league of legends is up
module.exports = (robot) ->
  robot.respond /islolup/i, (msg) ->
    msg.http("http://isleagueoflegendsup.com")
      .query({
        titlebar: "1"
      })
      .get() (err, res, body) ->
        title = /document\.title="([^\"]+)"/.exec(body)
        if title
          msg.send title[1]
        else
          msg.send "Error getting data: #{err}"
        #videos = JSON.parse(body)
        #videos = videos.feed.entry
        #video  = msg.random videos
