class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_action :authenticate_admin!
  protect_from_forgery with: :exception
  before_filter :authenticate_admin!

def after_sign_in_path_for(resource)
	admins_path

end



end
