class OffersController < ApplicationController
  def new
    @offer = Offer.find_or_create_by(recruiter: current_user)
    @user = current_user
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      Match.where(offer: @offer).destroy_all
      User.where(role: "job_seeker").each do |user|
        Match.create!(offer: @offer, user_job_search: user.user_job_search) unless Candidacy.where(offer: @offer, job_seeker: user).exists?
      end
      redirect_to user_path(current_user), notice: "Votre profil a été complété avec succès !"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @match = Match.find_by(offer: @offer, user_job_search: current_user.user_job_search)
    @marker =
    [{
      lat: @offer.latitude,
      lng: @offer.longitude,
      marker_html: render_to_string(partial: current_user.job_seeker? ? set_marker(@match) : "matches/marker")
    }]
  end

  def set_marker(match)
    levels = {
      "Légendaire" => "matches/markerlegendaire",
      "Epique" => "matches/markerepique",
      "Rare" => "matches/marker",
      "Commun" => "matches/markercommun"
    }
    levels[match.level]
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :contrat_type, :address, :experience_level, :salary, :study_level, :sector, :description)
  end
end
