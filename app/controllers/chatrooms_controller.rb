class ChatroomsController < ApplicationController
  def index
    @chatrooms = current_user.chatrooms
  end
end
