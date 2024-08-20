class UserJobSearchesController < ApplicationController

  # def edit
  #   @user_job_search = UserJobSearch.find_or_create(params[:id])
  # end

  def new
    if current_user.last_user_job_search.present?
      @user_job_search = current_user.last_user_job_search
    else
      @user_job_search = UserJobSearch.new
    end
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
