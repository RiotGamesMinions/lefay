# Description:
#   /r/leagueoflegends
#
# Dependencies:
#   "nodepie": "0.5.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot /r/lol top <N> - get the top N items on /r/lol
#   /r/lol.top - refer to the top item on /r/lol
#   /r/lol[i] - refer to the ith item on /r/lol
#
# Author:
#   skimbrel - hackernews
#   ivey

NodePie = require("nodepie")

lolFeedUrl = "http://www.reddit.com/r/leagueoflegends.rss"

module.exports = (robot) ->
  robot.respond /\/r\/lol top (\d+)?/i, (msg) ->
    msg.http(lolFeedUrl).get() (err, res, body) ->
      if res.statusCode is not 200
        msg.send "Something's gone awry"
      else
        feed = new NodePie(body)
        try
          feed.init()
          count = msg.match[1] || 5
          items = feed.getItems(0, count)
          msg.send item.getTitle() + ": " + item.getPermalink() + " (" + item.getComments()?.html + ")" for item in items
        catch e
          console.log(e)
          msg.send "Something's gone awry"

  robot.hear /\/r\/lol(\.top|\[\d+\])/i, (msg) ->
     msg.http(lolFeedUrl).get() (err, res, body) ->
       if res.statusCode is not 200
         msg.send "Something's gone awry"
       else
         feed = new NodePie(body)
         try
           feed.init()
         catch e
           console.log(e)
           msg.send "Something's gone awry"
         element = msg.match[1]
         if element == "/r/lol.top"
           idx = 0
         else
           idx = (Number) msg.match[0].replace(/[^0-9]/g, '')
         try
           item = feed.getItems()[idx]
           msg.send item.getTitle() + ": " + item.getPermalink() + " (" + item.getComments()?.html + ")"
         catch e
           console.log(e)
           msg.send "Something's gone awry"