class ProjectsController < ApplicationController

  def show
    id = params[:id] # retrieve project task ID from URI route
    @project = Project.find(id) # look up project task by unique ID
    # will render app/views/projects/show.<extension> by default
  end

  def index
   sort = params[:sort] || session[:sort]
    case sort
    when 'title'
      ordering, @title_header = {:title => :asc}, 'hilite'
    when 'date'
      ordering, @date_header = {:due_date => :asc}, 'hilite'
    end
    @all_users = Project.getUsers
    @selected_users = params[:users] || session[:users] || {}
    
    if @selected_users == {}
      @selected_users = Hash[@all_users.map {|user| [user, user]}]
    end
    
    if params[:sort] != session[:sort] or params[:user] != session[:user]
      session[:sort] = sort
      session[:ratings] = @selected_users
      redirect_to :sort => sort, :users => @selected_users and return
    end
    @projects = Project.where(user: @selected_users.keys).order(ordering)
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
  
  def task_params
    params.require(:project).permit(:user, :title, :description, :extended_description, :due_date)
  end

end
