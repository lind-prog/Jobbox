class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @messages = @chatroom.messages.order(created_at: :asc)
    @message = @chatroom.messages.build

    @other_user = if current_user == @chatroom.candidacy.job_seeker
                    @chatroom.candidacy.offer.recruiter
                  else
                    @chatroom.candidacy.job_seeker
                  end
  end

  def index
    @chatrooms = Chatroom.includes(:messages).all
  end
end
