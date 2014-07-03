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

module.exports = (robot) ->
  robot.hear /(bug|excuse|what was (is|was) the problem|what (is|was) wrong)/i, (msg) ->
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