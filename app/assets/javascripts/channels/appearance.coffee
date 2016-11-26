App.appearance = App.cable.subscriptions.create "AppearanceChannel",
  connected: ->
    console.log("[AppearanceChannel] connected")
    @appear()

  disconnected: ->
    console.log("[AppearanceChannel] disconnected")

  received: (data) ->
    console.log("[AppearanceChannel] received data: %o", data)
    status = $(".device-status-" + data["device"]["id"])
    $.ajax(url: status.data("url"))

  appear: ->
    @perform 'appear'

  away: ->
    @perform 'away'
