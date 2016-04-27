class HomeController < ApplicationController

	def show
 	  category = params[:filter]

 	  if params[:search_value].blank?
 	  	redirect_to root_path and return
 	  else
 	  	value = params[:search_value]
 	  end

 	  case category
    when 'Activity', 'Mood', 'Genre'
 	  	redirect_to category_path(value) and return
 	  when 'Artist'
 	  	@artists = RSpotify::Artist.search(value)
 	  	if !@artists.blank?
 	  	  @artist_id = @artists.first.id
 	  	  redirect_to artist_path(@artist_id) and return
			else
				flash[:notice] = 'Invalid ID'
 	  	  redirect_to root_path and return
 	  	end

 	  else
 	  	redirect_to root_path and return
 	  end
 	  
	end

	def artists
        id = params[:id]
		artists = RSpotify::Artist.search("#{id}*", limit: 20, market: 'US')
		list = []
		artists.each do |artist|
		   list.push(artist.name)
		end
		render json: list
   end
end
