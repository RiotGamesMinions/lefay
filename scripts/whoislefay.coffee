module.exports = (robot) ->
  robot.respond /who are you\??/i, (msg) ->
    msg.send "https://confluence.riotgames.com/display/PLATFORM/LeFay"

  robot.hear /(who is|who's) lefay/i, (msg) ->
    msg.send "https://confluence.riotgames.com/display/PLATFORM/LeFay"

  robot.hear /(how do i see images|inline images)/i, (msg) ->
    msg.send "Instructions for inline images in Adium are on my wiki page: https://confluence.riotgames.com/display/PLATFORM/LeFay"

  robot.hear /images (aren't|not) working/i, (msg) ->
    msg.reply "Did you run `defaults write com.adiumX.adiumX MGMAIAllowStrangers -bool YES` in Terminal?"

  robot.hear /when.*merlin.*(release|deploy|update)/i, (msg) ->
    msg.send "https://confluence.riotgames.com/display/PLATFORM/Merlin+Release+Schedule"

  robot.hear /MERL-(\d+)/i, (msg) ->
        unless msg.match['input'].match /jira MERL/
            msg.send "https://jira.riotgames.com/browse/MERL-#{msg.match[1]}"

  robot.respond /kennen me/i, (msg) ->
    msg.send "http://i.imgur.com/y2Sr9.gif"

  robot.respond /pizza me/i, (msg) ->
    msg.send "http://school.discoveryeducation.com/clipart/images/pizza-party-color.gif"

  robot.hear /pizza party/i, (msg) ->
    msg.send "http://school.discoveryeducation.com/clipart/images/pizza-party-color.gif"
