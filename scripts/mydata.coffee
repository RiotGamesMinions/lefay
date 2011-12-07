# Manage your own user data in bot's brain
#
# my <field> is <value>   - set a field on your user record (email, cell, twitter)
# show my data            - see your user record
# contact <user name>     - see contact info for user
#

Util = require "util"

module.exports = (robot) ->
  robot.respond /show my data$/i, (msg) ->
    output = Util.inspect(msg.message.user, false, 4)
    msg.reply output

  robot.respond /contact (.*)/i, (msg) ->
    users = robot.usersForFuzzyName(msg.match[1])
    if users.length is 0
      msg.reply "No matching users found."
      return
    if users.length > 1
      names = users.map (user) -> user.name
      msg.reply "Multiple matches: #{names.join(', ')}"
      return
    user = users[0]
    # user = robot.brain.data.users[msg.match[1]]
    unless user
      msg.reply "No matching users found."
      return
    output = "#{msg.match[1]} can be reached here:"
    output += "\n email: #{user['email_address']}" if user['email_address']
    output += "\n mobile: #{user['mobile_number']}" if user['mobile_number']
    output += "\n twitter: @#{user['twitter']}" if user['twitter']
    output += "\n LoL: #{user['summoner_name']}" if user['summoner_name']
    if output == "#{msg.match[1]} can be reached here:"
      msg.reply "No contact info for #{user.name}"
    else
      msg.send output

  robot.respond /my (\w+) is (.+)$/i, (msg) ->
    key = msg.match[1]
    key = 'summoner_name' if key == 'summonername'
    key = 'summoner_name' if key == 'lol'
    key = 'email_address' if key == 'email'
    key = 'mobile_number' if key == 'cell'
    msg.message.user[key] = msg.match[2]
    msg.reply 'Got it.'

  robot.hear /names are broken.*/, (msg) ->
    delete robot.brain.data.users['undefined']
    for own key, user of robot.brain.data.users
      robot.brain.data.users[key].name = user.id
    msg.reply "I fixed it."
