class ArtistsController < ApplicationController
  def index

  end

  def show
  	@artist = RSpotify::Artist.find(params[:id])
  end
end
