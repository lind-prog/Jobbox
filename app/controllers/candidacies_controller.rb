class CandidaciesController < ApplicationController

  def create
    @candidacy = Candidacy.new
    @candidacy.job_seeker = current_user
    @candidacy.offer = Offer.find(params[:offer_id])
    if @candidacy.save
      @chatroom = Chatroom.create(candidacy: @candidacy)
      redirect_to chatroom_path(@chatroom), notice: 'Votre candidature a bien été créée, vous pouvez maintenant discuter avec le recruteur!'
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
