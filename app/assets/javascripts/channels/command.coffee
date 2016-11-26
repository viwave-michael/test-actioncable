App.command    = App.cable.subscriptions.create "CommandChannel",
  connected: ->
    console.log("[CommandChannel] connected")

  disconnected: ->
    console.log("[CommandChannel] disconnected")

  received: (data) ->
    console.log("[CommandChannel] received data: %o", data)
    cmd = data["command"]
    device = data["device"]
    selector = "#device-" + device.id + "-command"
    if ($(selector).length)
      $(selector + " > mark").text(cmd.action)

#  send: (cmd) ->
#    @perform 'send', command: cmd
