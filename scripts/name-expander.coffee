# Expands a message to a named group of people into their individual names
#
# merlin: <your message>

josiah = "@jk"
cliff = "@cliff"
ivey = "@ivey"
chong = "@cyan"
kyle = "@kallan"
trotter = "Trotter Cashion"
afeng = "Aaron Feng"
akwan = "Alan Kwan"
marksoho = "Mark Soho"
nmathrani = "Neeraj Mathrani"
steve = "@srude"
fei = "@fei"
brad = "@brad"
cquinn = "@cquinn"


noc_members = ["Carter1", "Cames1", "jdowns", "jdowns1", "jtramullas", "nstuhring", "ctrytten1", "ctrytten", "akim", "nsanches", "jkim", "ebednik", "nhooper"]

build_members = ["mvuong", "mstewart", "jromigh", "zeffron", "ilinkletter", "eyap"]

dat_members = [
  ivey,
  josiah,
  steve,
  kyle,
  fei,
  cliff,
  brad,
  cquinn
]

chef_repo_mergers = [
  josiah,
  ivey,
  cliff
]

mashion_devs = [
  trotter,
  afeng
]

devinf_members = [
  cliff,
  akwan,
  marksoho,
  chong,
  "akwan",
  "mark.soho",
  "msoho",
  "cyan"
]


sysadmin_members = ["ehays", "fnenz2", "fnenz", "lbernat", "Stephen Couratier", "kying", "hvellanki", "bnessler"]

neteng_members = ["Paul Davis", "amills", "jhorstman", "sean cline", "CheechandMChong"]

dba_members = ["awhitwham", "agentile", "dminor", "tlekai", "thomas.lekai", "dryan", "dennis.ryan", "rbyrd"]


module.exports = (robot) ->
  robot.hear /^@dat:? (.+)/i, (msg) ->
    msg.send dat_members.join(", ") + ": ^^"

  # robot.hear /^(mashion)( team| dudes| guys)*:(.+)/i, (msg) ->
  #   msg.send mashion_devs.join(", ") + ": ^^"

  # robot.hear /^@?(noc)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
  #   msg.send noc_members.join(", ") + ": ^^"

  robot.hear /^@mergers:? (.+)/i, (msg) ->
    msg.send chef_repo_mergers.join(", ") + ": ^^"

  # robot.hear /^@?(build)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
  #   msg.send build_members.join(", ") + ": ^^"

  # robot.hear /^(di|devinf)( team| dudes| guys)*:(.+)/i, (msg) ->
  #   msg.send devinf_members.join(", ") + ": ^^"

  # robot.hear /^@?(sysadmin)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
  #   msg.send sysadmin_members.join(", ") + ": ^^"

  # robot.hear /^@?(ops)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
  #   msg.send sysadmin_members.join(", ") + ": ^^"

  # robot.hear /^@?(neteng)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
  #   msg.send neteng_members.join(", ") + ": ^^"

  # robot.hear /^@?(dba)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
  #   msg.send dba_members.join(", ") + ": ^^"
