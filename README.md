LeFay
=====

This is a version of GitHub's Campfire bot, hubot. She's pretty cool.

This version runs on Riot Games internal Jabber server.


Playing with LeFay
==================

LeFay runs under ~lefay on the Merlin team's git server. She runs in a loop that
continuously checks for updates to the git repo, so all you need to do is commit
changes, and then say "lefay: please, when you have a moment, reboot yourself"
in open chat.

Take a look at the scripts in the `./scripts` folder for examples.
Add whatever functionality you want LeFay to have.


hubot-scripts
=============

There will inevitably be functionality that everyone will want. Instead
of adding it to hubot itself, you can submit pull requests to
[hubot-scripts](https://github.com/github/hubot-scripts). To enable
scripts from the hubot-scripts package, add the script name with extension as a
double quoted string to the hubot-scripts.json file in this repo.
