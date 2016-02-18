class ProjectsController < ApplicationController

  def show
    id = params[:id] # retrieve project task ID from URI route
    @project = Project.find(id) # look up project task by unique ID
    # will render app/views/projects/show.<extension> by default
  end

  def index
    @projects = Project.all

    category = params[:category] || session[:category]
    case category
      when 'title'
      @projects = Project.order(category)
      @title_header = 'hilite'
      when 'due_date'
      @projects = Project.order(category)
      @due_date_header = 'hilite'
    end
  end

  def new
    # default: render 'new' template
  end

  def create
    @project = Project.create!(project_params)
    flash[:notice] = "#{@project.title} was successfully created."
    redirect_to projects_path
  end

  def edit
    @project = Project.find params[:id]
  end

  def update
    @project = Project.find params[:id]
    @project.update_attributes!(project_params)
    flash[:notice] = "#{@project.title} was successfully updated."
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project '#{@project.title}' deleted."
    redirect_to projects_path
  end

  private
      def project_params
        params.require(:project).permit(:title, :description, :extended_description, :user, :due_date)
      end

end
