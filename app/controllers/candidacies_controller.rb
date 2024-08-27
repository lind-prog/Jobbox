class CandidaciesController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    @candidacy = Candidacy.new
    # @candidacy.job_seeker = User.find(params[:user_id])
    user = current_user || User.find(params[:user_id])
    @candidacy.job_seeker = user.role == "job_seeker" ? user : User.find(params[:user_id])
    @candidacy.offer = Offer.find(params[:offer_id])
    Match.find_by(offer: @candidacy.offer, user_job_search: @candidacy.job_seeker.user_job_search).delete
    if @candidacy.save
      @chatroom = Chatroom.create(candidacy: @candidacy)
      # redirect_to chatroom_path(@chatroom), notice: "Vous pouvez maintenant discuter avec le candidat!"
      if user.role == "job_seeker"
        redirect_to chatroom_path(@chatroom), notice: "Votre candidature a bien été créée, vous pouvez maintenant discuter avec le recruteur!"
      else
        redirect_to chatroom_path(@chatroom), notice: "Vous pouvez maintenant discuter avec le candidat!"
      end
    else
      render "offers/show", status: :unprocessable_entity
    end
  end

  def my_candidacies
    if params[:status]
      @candidacies = current_user.candidacies_as_job_seeker.where(status: params[:status]).includes(:offer)
    else
      @candidacies = current_user.candidacies_as_job_seeker.includes(:offer)
    end
  end

  private

  def candidacy_params
    params.require(:candidacy).permit(:status)
  end

end
