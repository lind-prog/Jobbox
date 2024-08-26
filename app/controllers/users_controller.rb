class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_recruiter, only: [:index, :swipe_left, :swipe_right]

  # Affiche le profil de l'utilisateur (demandeur d'emploi)
  def show
    @user = User.find(params[:id])

    if @user.job_seeker?
      @candidacies = @user.candidacies_as_job_seeker
      # Ajouter d'autres données spécifiques ici si nécessaire
    else
      redirect_to root_path, alert: "Accès refusé."
    end
  end

  # Affiche les demandeurs d'emploi pour les recruteurs à swiper
  def index
    # On filtre les demandeurs d'emploi qui n'ont pas encore été swipés par le recruteur actuel
    @job_seekers = User.where(role: 0)

    #if @job_seekers.empty?
      #redirect_to root_path, notice: "Aucun demandeur d'emploi disponible pour le moment."
    #end
  end

  # Action pour swipe gauche (rejet)
  def swipe_left
    job_seeker = User.find(params[:id])
    current_user.rejected_job_seekers << job_seeker unless current_user.rejected_job_seekers.include?(job_seeker)
    redirect_to users_path, notice: "Demandeur d'emploi rejeté."
  end

  # Action pour swipe droite (favoris)
  def swipe_right
    job_seeker = User.find(params[:id])
    current_user.favorited_job_seekers << job_seeker unless current_user.favorited_job_seekers.include?(job_seeker)
    redirect_to users_path, notice: "Demandeur d'emploi ajouté aux favoris."
  end

  private

  # Vérifie que l'utilisateur actuel est un recruteur
  def ensure_recruiter
    redirect_to root_path, alert: "Accès réservé aux recruteurs." unless current_user.recruiter?
  end
end
