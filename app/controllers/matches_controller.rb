class MatchesController < ApplicationController
  def index
    @user_job_search = UserJobSearch.find(params[:user_job_search_id])
    @matches = Match.where(user_job_search: @user_job_search).select { |match| match.scoring >= 3 }.pluck(:offer_id)
    @offers = Offer.where(id: @matches)
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {
          offer: offer,
          recruiter: offer.recruiter
        }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end
end
