class MessagesController < ApplicationController
  def new
    @message = Message.new
  end
  
  def create
    Message.create(user_params)
  end

  def message_params
    params.require(:message).permit(:title, :content)
  end
end
