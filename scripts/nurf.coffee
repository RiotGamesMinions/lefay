nurfs = [
        "http://giant.gfycat.com/ScornfulSmugBurro.gif",
        "http://fat.gfycat.com/GrouchyMintyEuropeanfiresalamander.gif",
        "http://fat.gfycat.com/GrandPalatableBobwhite.gif",
        "http://fat.gfycat.com/ReadyGlaringGermanshepherd.gif",
        "http://i.imgur.com/ASVymEl.gif",
]

module.exports = (robot) ->
  robot.hear /(unbelievable|inconceivable|wait what)/i, (msg) ->
    msg.send msg.random nurfs


