# Description:
#   Returns title when MLKSHK images are posted
#
# Dependencies:
#   "jsdom": "0.2.15"
#
# Configuration:
#
# Commands:
#   http://mlkshk.com/r/<IMG>.jpg - prints the title for the image
#
# Author:
#   ivey
#   Based on http-info by ajacksified

jsdom = require 'jsdom'
_     = require 'underscore'

module.exports = (robot) ->

  robot.hear /http:\/\/mlkshk.com\/r\/(\w+)(\.(png|jpg|jpeg|gif))?/i, (msg) ->
    imageId = msg.match[1]

    jsdom.env(
      html: "http://mlkshk.com/p/#{imageId}"
      scripts: [
        'http://code.jquery.com/jquery-1.7.2.min.js'
      ]
      done: (errors, window) ->
        unless errors
          $ = window.$
          title = $('.image-title h1').text()

          if title
            msg.send title
     )