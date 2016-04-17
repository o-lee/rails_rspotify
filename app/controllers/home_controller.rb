class HomeController < ApplicationController

	def show
 	  category = params[:filter]

 	  if params[:search_value].blank?
 	  	redirect_to root_path
 	  else
 	  	value = params[:search_value]
 	  end

 	  case category
 	  when 'Activity'
 	  when 'Artist'
 	  	artists = RSpotify::Artist.search(value)
 	  	@artist_id = artists.first.id
 	  	redirect_to artist_path(@artist_id)
 	  when 'Genre'
 	  when 'Mood'
 	  else
 	  	redirect_to root_path
 	  end
	end
end
