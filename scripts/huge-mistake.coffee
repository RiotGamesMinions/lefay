module.exports = (robot) ->
  robot.hear /made a huge mistake$/i, (msg) ->
    msg.send "http://i3.kym-cdn.com/entries/icons/original/000/011/767/35nksf.jpg"
