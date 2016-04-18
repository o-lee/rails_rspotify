require 'rspotify'
class RestController < ApplicationController
   def show
       id = params[:id] # retrieve project task ID from URI route
       
       #RSpotify.authenticate("70c8eb6616be4e849cc7e035e97f99fc", "a45a56959d9447afb84dd8ceb1ee4ece")
       
       party = RSpotify::Category.find(id)
       categories = RSpotify::Category.list
       
       list = []
       party.playlists.each do |name|
          list.push(name.name)
       end
       
       ## render new view
       render json: party.playlists[0].tracks
       
   end
   
   def callback
	   code = params[:code]
	   respond_to do |format|
		format.html { render :text => code }
	   end
   end 
end