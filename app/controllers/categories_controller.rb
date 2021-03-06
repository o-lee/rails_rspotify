class CategoriesController < ApplicationController

  def show
    
    @category = params[:id] # retrieve project task ID from URI route
  	id = @category.downcase
    choices = ["toplists","mood","party","workout","pop","popculture", "focus", "rock","edm_dance", "chill","dinner", "sleep","hiphop","rnb", "country","folk_americana","metal","soul", "travel" ]
    
    if !choices.include?(id)
      flash[:notice] = 'Invalid Search Parameters'
      redirect_to root_path and return
    else

    RSpotify.authenticate("70c8eb6616be4e849cc7e035e97f99fc", "a45a56959d9447afb84dd8ceb1ee4ece")

    category = RSpotify::Category.find(id) 
    RestClient::ResourceNotFound


    @list = []

    category.playlists.each do |name|
      @list.push(name.name)
    end

    @songs = category.playlists[0].tracks

    end
  end


end
