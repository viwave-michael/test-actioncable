App.command    = App.cable.subscriptions.create "CommandChannel",
  connected: ->
    console.log("[CommandChannel] connected")

  disconnected: ->
    console.log("[CommandChannel] disconnected")

  received: (data) ->
    console.log("[CommandChannel] received data: %o", data)

#  send: (cmd) ->
#    @perform 'send', command: cmd
