# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    puts "******** AppearanceChannel subscribed ********"
    stream_from 'AppearanceChannel'

    appear
  end

  def unsubscribed
    puts "******** AppearanceChannel unsubscribed ********"
    # Any cleanup needed when channel is unsubscribed
    # current_device.disappear
    # ActionCable.server.broadcast('AppearanceChannel', device: current_device)
  end

  def appear
    current_device.appear
    ActionCable.server.broadcast('AppearanceChannel', device: current_device)
  end

  def away
    current_device.away
    ActionCable.server.broadcast('AppearanceChannel', device: current_device)
  end
end
