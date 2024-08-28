class MatchesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @user_job_search = UserJobSearch.find(params[:user_job_search_id])
    @user_matches = Match.where(user_job_search: @user_job_search)
    @matches = params[:level].present? ? @user_matches.where(level: params[:level][:level]) : @user_matches.select { |match| match.scoring >= 3 }
    @offers_with_level = @matches.pluck(:offer_id, :level)
    @offers = Offer.where(id: @offers_with_level.flatten.reject { |element| element.is_a?(String) })
    @markers = @offers.geocoded.map do |offer|
      marker = set_marker(@offers_with_level, offer.id)
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {
          offer: offer,
          recruiter: offer.recruiter
        }),
        marker_html: render_to_string(partial: marker)
      }
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    # No need for app/views/matchs/destroy.html.erb
    redirect_to users_path, status: :see_other
  end

  private

  def set_marker(array, id)
    levels = {
      "Légendaire" => "markerlegendaire",
      "Epique" => "markerepique",
      "Rare" => "marker",
      "Commun" => "markercommun"
    }
    levels[array.select { |element| element.first == id }.flatten.last]
  end
end
