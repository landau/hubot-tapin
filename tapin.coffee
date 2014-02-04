responses = [
  'tap in to the pulse of dining and entertainment.'
  'that shit is banana sandwich.'
  'GoNation is an activity engine (and network).'
  'check out what Mark is building...you know...twitter?'
  'move that div down 1 pixel.'
  'we don\'t have a color. It\'s just an accent color.'
  'investors are smothering me.'
  'i was up looking at websites for 487 hours till 4 am last night!'
  'is a beast'
]

module.exports = (robot) ->
  robot.respond /(tapin )(.*)/i, (msg) ->
    tapin = msg.random responses
    if msg.match[2] == 'me'
      msg.send "#{msg.message.user.name}, #{tapin}"
    else if msg.match[2] == 'all'
      msg.send "Everyone, #{tapin}"
    else
      msg.send "#{msg.match[2]}, #{tapin}"

