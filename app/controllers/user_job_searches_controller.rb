class UserJobSearchesController < ApplicationController
  # before_action :set_user
  # before_action :set_user_job_search, only: %i[edit update]

  def new
    @user_job_search = UserJobSearch.find_or_create_by(job_seeker: current_user)
    @user = current_user
  end

  def update
    @user_job_search = UserJobSearch.find(params[:id])
    if @user_job_search.update(user_job_search_params)
      Match.where(user_job_search: @user_job_search).destroy
      Offer.all.each do |offer|
        Match.create!(offer: offer, user_job_search: @user_job_search)
      end
      redirect_to user_job_search_matches_path(@user_job_search), notice: "Votre profil a été complété avec succès !"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  # def set_user_job_search
  #   @user_job_search = @user.user_job_search || UserJobSearch.new
  # end

  def user_job_search_params
    params.require(:user_job_search).permit(:title, :contrat_type, :city, :experience_level, :salary, :study_level, :sector)
  end
end
