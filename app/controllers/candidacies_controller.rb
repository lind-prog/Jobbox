class CandidaciesController < ApplicationController

  def create
    @candidacy = Candidacy.new
    @candidacy.job_seeker = current_user
    @candidacy.offer = Offer.find(params[:offer_id])
    if @candidacy.save
      redirect_to my_candidacies_candidacies_path, notice: 'Votre candidature a bien été créée !'
    else
      render "offers/show", status: :unprocessable_entity
    end
  end

  def my_candidacies
    @candidacies = current_user.candidacies_as_job_seeker.includes(:offer)
  end

  private

  def candidacy_params
    params.require(:candidacy).permit(:status)
  end

end
