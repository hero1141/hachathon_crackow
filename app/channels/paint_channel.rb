# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class PaintChannel < ApplicationCable::Channel
  def subscribed
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  def speak(data)
  end
end
