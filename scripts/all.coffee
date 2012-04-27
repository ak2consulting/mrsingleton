# Mention everyone in the room when someone uses @all
#
# @all: lunch is here
#
# user1 user 2 user3: ^^^


module.exports = (robot) ->

  robot.hear /@all/i, (msg) ->

    userList = for id, user of robot.users()
      "#{user.name}"
    userList = (name for name in userList when !name.match(/^github/i))

    msg.send "#{userList}: ^^^"

