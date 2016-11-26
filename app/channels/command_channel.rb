# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class CommandChannel < ApplicationCable::Channel
  def subscribed
    puts "******** CommandChannel-#{current_device.id} subscribed ********"
    stream_from "CommandChannel-#{current_device.id}"
  end

  def unsubscribed
    puts "******** CommandChannel-#{current_device.id} unsubscribed ********"
  end

  # def send(cmd)
  #   puts "******** CommandChannel-#{current_device.id} send ********"
  #   puts "cmd: #{cmd}"
  # end
end
