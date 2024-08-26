class OffersController < ApplicationController
  def index
    @offers = UserJobSearch.all
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
