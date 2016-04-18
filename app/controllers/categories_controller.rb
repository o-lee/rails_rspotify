class CategoriesController < ApplicationController
  require 'rspotify'
  
  def index
  end

  def show
  	id = params[:id] # retrieve project task ID from URI route

    RSpotify.authenticate("70c8eb6616be4e849cc7e035e97f99fc", "a45a56959d9447afb84dd8ceb1ee4ece")

    category = RSpotify::Category.find('party')
    @categories = RSpotify::Category.list

    @list = []
    category.playlists.each do |name|
       @list.push(name.name)
    end

     @songs = category.playlists[0].tracks
  end

end
