class MessagesController < ApplicationController
  def index
    @messages = Message.current_chat(current_user.id, params[:receiver_id])
    @message = Message.new
  end

  def create
    @message = Message.new(sender_id: current_user.id, receiver_id: params[:message][:receiver_id], content: params[:message][:content] )
    if @message.save
      html = render_message(@message)
      ActionCable.server.broadcast "user_#{@message.receiver_id}", message: html
      ActionCable.server.broadcast "user_#{@message.sender_id}", message: html
    end
  end

  def render_message(message)
    render(partial: 'message', locals: { message: message })
  end
end
