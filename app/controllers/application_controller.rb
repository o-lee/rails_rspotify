class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 rescue_from RestClient::ResourceNotFound, :with => :resource_not_found

  private

  def resource_not_found
    redirect_to root_path and return
  end
end
