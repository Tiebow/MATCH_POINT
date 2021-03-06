class MessagesController < ApplicationController
  def create
    # binding.pry
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    authorize @message
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
      @chatroom,
      render_to_string(partial: "messages/messages", locals: { message: @message, user: @message.user, is_author: false })
      )
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end

end
