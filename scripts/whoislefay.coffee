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