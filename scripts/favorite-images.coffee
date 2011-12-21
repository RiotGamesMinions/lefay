# Some of our favorite images
#
# save image URL as SOME NAME FOR THE IMAGE -> save an image
# show me SOME NAME FOR THE IMAGE -> show an image
# favorite images -> see a list
#

makeImageKey = (s) ->
  s.toLowerCase().replace(/\ban?\b/g,'').replace(/\bthe\b/g,'').replace(/\s\s/g, ' ').replace(/^ /,'')

module.exports = (robot) ->
  robot.respond /save image (\S+) as (.*)/i, (msg) ->
    robot.brain.data.favorite_images or= {}
    robot.brain.data.favorite_images[makeImageKey(msg.match[2])] = msg.match[1]
    msg.send "OK"

  robot.respond /show me (.*)/i, (msg) ->
    robot.brain.data.favorite_images or= {}
    if robot.brain.data.favorite_images[makeImageKey(msg.match[1])]?
      msg.send robot.brain.data.favorite_images[makeImageKey(msg.match[1])]
    else
      msg.send "Not found. Use 'save image [URL] as [NAME]' to save one."

  robot.respond /favorite images/i, (msg) ->
    robot.brain.data.favorite_images or= {}
    imageNames = for name, image of robot.brain.data.favorite_images
      "#{name}"
    msg.send imageNames.join('\n')
