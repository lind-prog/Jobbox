class OffersController < ApplicationController
  def show
    @offer = Offer.find(params[:id])
    @match = Match.find_by(offer: @offer, user_job_search: current_user.user_job_search)
    @marker =
    [{
      lat: @offer.latitude,
      lng: @offer.longitude,
      marker_html: render_to_string(partial: set_marker(@match))
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
end
