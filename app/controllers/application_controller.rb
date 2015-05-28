class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  include Pundit


  protected

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end


  private
  
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

end
