# Sigh
#
# Author:
#   ivey

module.exports = (robot) ->
  robot.hear /\w\*?sigh\*?\w/i, (msg) ->
    msg.send "http://media.tumblr.com/60425e6ef4dc35ac83bd3ef23ef3cc8f/tumblr_inline_misumkoT5k1qz4rgp.gif"


