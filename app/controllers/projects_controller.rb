class ProjectsController < ApplicationController

  def show
    id = params[:id] # retrieve project task ID from URI route
    @project = Project.find(id) # look up project task by unique ID

    respond_to do |format|
      format.html
      format.js
      format.json { render :json => @project.to_json }
    end
  end


  def index

  end

  def new
    # default: render 'new' template
  end

  def create
    @project = Project.create!(task_params)
    flash[:notice] = "#{@project.title} was successfully created."
    redirect_to projects_path
  end

  def edit
    @project = Project.find params[:id]
  end

  def update
    @project = Project.find params[:id]
    @project.update_attributes!(task_params)
    flash[:notice] = "#{@project.title} was successfully updated."
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project '#{@project.title}' deleted."
    redirect_to projects_path
  end

  def playlist
       id = params[:id] # retrieve project task ID from URI route

       RSpotify.authenticate("70c8eb6616be4e849cc7e035e97f99fc", "a45a56959d9447afb84dd8ceb1ee4ece")

       party = RSpotify::Category.find(id)
       categories = RSpotify::Category.list

       @list = []
       party.playlists.each do |name|
          @list.push(name.name)
       end

       @songs = party.playlists[0].tracks
   end

end
