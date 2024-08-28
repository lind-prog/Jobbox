class CandidaciesController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    @candidacy = Candidacy.new
    # @candidacy.job_seeker = User.find(params[:user_id])
    user = current_user || User.find(params[:user_id])
    @candidacy.job_seeker = user.role == "job_seeker" ? user : User.find(params[:user_id])
    @candidacy.offer = Offer.find(params[:offer_id])
    Match.find_by(offer: @candidacy.offer, user_job_search: @candidacy.job_seeker.user_job_search).destroy
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
    # Si current user est un candidat
    if current_user.role == "job_seeker"
      if params[:status]
        @candidacies = current_user.candidacies_as_job_seeker.where(status: params[:status]).includes(:offer).order(created_at: :desc)
      else
        @candidacies = current_user.candidacies_as_job_seeker.includes(:offer).order(created_at: :desc)
      end
    else
      # Sinon (si il est recruteur)
      # Récupérer les candidacies liées à l'offre du recruteur
      if params[:status]
        @candidacies = current_user.offer.candidacies.where(status: params[:status]).order(created_at: :desc)
      else
        @candidacies = current_user.offer.candidacies.order(created_at: :desc)
      end
    end
  end

  def accept
    @candidacy = Candidacy.find(params[:id])
    @candidacy.update(status: 1)
    Message.create(
      chatroom: @candidacy.chatroom,
      user: current_user,
      content: "Votre candidature pour le poste de #{@candidacy.offer.title} a été acceptée."
    )
    redirect_to my_candidacies_candidacies_path
  end

  def refuse
    @candidacy = Candidacy.find(params[:id])
    @candidacy.update(status: 2)
    Message.create(
      chatroom: @candidacy.chatroom,
      user: current_user,
      content: "Votre candidature pour le poste de #{@candidacy.offer.title} a été refusée."
    )
    redirect_to my_candidacies_candidacies_path
  end

  private

  def candidacy_params
    params.require(:candidacy).permit(:status)
  end

end
