class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @messages = Message.new

  end
end
