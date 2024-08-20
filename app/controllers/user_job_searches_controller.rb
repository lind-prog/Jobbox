class UserJobSearchesController < ApplicationController
  def index
    @user_job_search = UserJobSearch.all
    @markers = @user_job_search.geocoded.map do |user_job_search|
      {
        lat: user_job_search.latitude,
        lng: user_job_search.longitude
      }
    end
  end
  # def edit
  #   @user_job_search = UserJobSearch.find_or_create(params[:id])
  # end

  def new
    @user_job_search = UserJobSearch.find_or_create_by(job_seeker: current_user)
  end

  def update
    if @user_job_search.update(user_job_search_params)
      redirect_to @user_job_search, notice: "Votre profil a été complété avec succès !"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_job_search_params
    params.require(:user_job_search).permit(:title, :contrat_type, :localisation, :experience_level, :salary, :study_level, :sector)
  end
end
