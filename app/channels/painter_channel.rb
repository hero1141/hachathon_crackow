# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class PainterChannel < ApplicationCable::Channel
  def subscribed
    stream_from "paint"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  def speak(data)
    ActionCable.server.broadcast "paint", cords: data
  end
end
