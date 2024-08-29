class ChatroomsController < ApplicationController
  def index
    # raise

    @chatrooms = current_user.recruiter? ? Chatroom.where(candidacy: current_user.candidacies_as_recruiter) : Chatroom.where(candidacy: current_user.candidacies)
    if params[:chatroom]
      @chatroom = Chatroom.find(params[:chatroom])
      @candidacy = @chatroom.candidacy
    end
    @message = Message.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @candidacy = @chatroom.candidacy
    @match = Match.find_by(offer: @candidacy.offer, user_job_search: @candidacy.job_seeker.user_job_search)
    @message = Message.new
  end
end
