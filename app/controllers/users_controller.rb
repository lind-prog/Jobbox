class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    if @user.job_seeker?
      # Logique pour le demandeur d'emploi
      @candidacies = @user.candidacies_as_job_seeker
      # Tu peux ajouter d'autres données spécifiques ici, comme les messages, etc.
    else
      redirect_to root_path, alert: "Accès refusé."
    end
  end
end
