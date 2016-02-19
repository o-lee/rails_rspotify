class ProjectsController < ApplicationController

  def show
    id = params[:id] # retrieve project task ID from URI route
    @project = Project.find(id) # look up project task by unique ID
    # will render app/views/projects/show.<extension> by default
  end

  def index
    category = params[:category] || session[:category] #create variable to sort by clicking on headers
    case category
      when 'title'
       @projects = Project.order(category)
       @title_header = 'hilite' # sort and hilite header by title
      when 'due_date'
       @projects = Project.order(category)
       @due_date_header = 'hilite' # sort and hilite header by due_date
      else
       @projects = Project.all # no category selected, display table unsorted
    end

    @all_users = Project.all_users #create a vairable to store users selected by check box
    @selected_users = params[:users] || session[:users] || {} 
    
    if @selected_users == {}
      @selected_users = Hash[@all_users.map {|user| [user, user]}] # if all users are deselected, select all
    end
    
    if params[:category] != session[:category] #preserve users and sort for duration of session
      session[:category] = category
      flash.keep
      redirect_to :category => category, :users => @selected_users and return
    end
    if params[:users] != session[:users] and @selected_users != {}
      session[:category] = category
      session[:users] = @selected_users
      flash.keep
      redirect_to :category => category, :users => @selected_users and return
    end
    
    @projects = Project.order(category) # sort by category preserving selected users
    @projects = @projects.where(:user => params[:users].keys) if params[:users].present?
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
