class OffersController < ApplicationController
  def index
    @user_job_search = UserJobSearch.all
    @markers = @user_job_search.geocoded.map do |user_job_search|
      {
        lat: user_job_search.latitude,
        lng: user_job_search.longitude
      }
    end
  end
end
