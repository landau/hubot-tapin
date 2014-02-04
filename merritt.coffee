responses = [
  'I wanna go back, to better times, back to the nineties, with nickleodeon slime'
  'cheese fries, never die'
  'Merritt Canteen established in \'42!'
  'Goin to tha Merritt Canteen... with my team!'
]

module.exports = (robot) ->
  robot.respond /(merritt )(.*)/i, (msg) ->
    lyrics = msg.random responses
    if msg.match[2] == 'me'
      msg.send "#{msg.message.user.name}, ♬ #{lyrics} ♬"
    else if msg.match[2] == 'all'
      msg.send "Everyone, ♬ #{lyrics} ♬"
    else
      msg.send "#{msg.match[2]}, ♬ #{lyrics} ♬"

