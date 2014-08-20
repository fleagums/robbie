# Description:
#   Talklikewarrenellis.com random quote builder
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot good morning - Receive a random quote from the warren ellis generator
#
# Author:
#   vosechu

module.exports = (robot) ->

  robot.respond /(talk like warren ellis|ellis)/i, (msg) ->
    msg.http("http://talklikewarrenellis.com/random.php")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).quote

  robot.respond /good (morning|afternoon|evening|day|night)/i, (msg) ->
    msg.http("http://talklikewarrenellis.com/random.php")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).quote


