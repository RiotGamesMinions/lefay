module.exports = (robot) ->
  robot.respond /who are you\??/i, (msg) ->
    msg.send "https://confluence.riotgames.com/display/PLATFORM/LeFay"

  robot.hear /(who is|who's) lefay/i, (msg) ->
    msg.send "https://confluence.riotgames.com/display/PLATFORM/LeFay"

  robot.hear /(how do i see images|inline images)/i, (msg) ->
    msg.send "Instructions for inline images in Adium are on my wiki page: https://confluence.riotgames.com/display/PLATFORM/LeFay"

  robot.hear /images (aren't|not) working/i, (msg) ->
    msg.reply "Did you run `defaults write com.adiumX.adiumX MGMAIAllowStrangers -bool YES` in Terminal?"

  robot.hear /(hack.*lefay|lefay.*script|script.*lefay)/i, (msg) ->
    msg.reply "https://confluence.riotgames.com/display/PLATFORM/Lefay+Hacking+Guide"

  robot.hear /when.*merlin.*(release|deploy|update)/i, (msg) ->
    msg.send "https://confluence.riotgames.com/display/PLATFORM/Merlin+Release+Schedule"

  robot.hear /FEAPP08/i, (msg) ->
    msg.send "LT Merlin, FEAPP08 is down.  Brad from Ops is looking into it."

  robot.hear /MERL-(\d+)/i, (msg) ->
    unless msg.match['input'].match /jira MERL/
      msg.send "https://jira.riotgames.com/browse/MERL-#{msg.match[1]}"
