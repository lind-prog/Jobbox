class UserJobSearchesController < ApplicationController
  before_action :set_user
  before_action :set_user_job_search, only: %i[edit update]

  def new
    @user_job_search = @user.user_job_search || UserJobSearch.new
  end

  def create
    @user_job_search = @user.build_user_job_search(user_job_search_params)
    if @user_job_search.save
      redirect_to user_path(@user), notice: "Votre profil a été complété avec succès !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @user_job_search.update(user_job_search_params)
      redirect_to user_path(@user), notice: "Votre profil a été mis à jour avec succès !"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_job_search
    @user_job_search = @user.user_job_search || UserJobSearch.new
  end

  def user_job_search_params
    params.require(:user_job_search).permit(:title, :contrat_type, :city, :experience_level, :salary, :study_level, :sector)
  end
end
