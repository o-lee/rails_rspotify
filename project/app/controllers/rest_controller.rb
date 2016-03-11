class RestController < ApplicationController
   def show
       id = params[:id] # retrieve project task ID from URI route
       render json: Project.find(id)
   end
end
