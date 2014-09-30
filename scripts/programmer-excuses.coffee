# Description:
#   Hubot will handle your bug reports now
#
# Dependencies:
#   "scraper": "0.0.9"
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   capoferro (shamelessly copied from rrix's archer.coffee)

scraper = require 'scraper'
action = (msg) ->
    options = {
      'uri': 'http://programmerexcuses.com',
      'headers': {
        'User-Agent': 'User-Agent: Programmer Excuses Bot for Hubot'
      }
    }
    scraper options, (err, jQuery) ->
      throw err if err
      quote = jQuery('.wrapper a').toArray()[0]
      dialog = '' + jQuery(quote).text().trim()
      msg.send dialog

module.exports = (robot) ->
  robot.hear /\sbug[\s?.!]/i, action
  robot.hear /\sexcuse\s/i, action
  robot.hear /what (is|was) the (problem|bug|issue)/i, action
