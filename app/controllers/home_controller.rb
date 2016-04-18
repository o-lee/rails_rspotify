class HomeController < ApplicationController

	def show
 	  category = params[:filter]

 	  if params[:search_value].blank?
 	  	redirect_to root_path and return
 	  else
 	  	value = params[:search_value]
 	  end

 	  case category
 	  when 'Activity', 'Mood'
 	  	redirect_to category_path(value) and return
 	  when 'Artist'
 	  	@artists = RSpotify::Artist.search(value)
 	  	if !@artists.blank?
 	  	  @artist_id = @artists.first.id
 	  	  redirect_to artist_path(@artist_id) and return
 	  	else 
 	  	  redirect_to root_path, :notice => "Invalid Artist" and return
 	  	end
 	  	
 	  when 'Genre'
 	  else
 	  	redirect_to root_path and return
 	  end
	end
end
