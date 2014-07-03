scraper = require 'scraper'

module.exports = (robot) ->
        robot.hear /bug/i, (msg) ->
                options = {
                        'uri': 'http://programmerexcuses.com',
                        'headers': {
                                'User-Agent': 'User-Agent: Programmer Excuses Bot for Hubot'
                        }
                scraper options, (err, jQuery) ->
                        throw err if err
                        quote = jQuery('.wrapper a').toArray()[0]
                        dialog = '' + jQuery(quote).text().trim()
                        msg.send dialog