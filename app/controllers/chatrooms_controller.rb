class ChatroomsController < ApplicationController
  def index
    # raise
    @chatrooms = Chatroom.all
    @chatroom = Chatroom.find(params[:chatroom]) if params[:chatroom]
    @message = Message.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
