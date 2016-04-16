class ArtistsController < ApplicationController
  def index
  	if !params[:artist_name].blank?
  	   @artist = RSpotify::Artist.find(params[:artist_name].id)
  	else
  	   redirect_to root_path
  	end
  end

  def show
  end
end
