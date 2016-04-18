class ArtistsController < ApplicationController
  def index

  end

  def show
  	unless RSpotify::Artist.find(params[:id])
  	  flash[:notice] = 'Invalid ID'
	  redirect_to root_path and return
  	else
  	  @artist = RSpotify::Artist.find(params[:id])
  	end
  	
  end
end
