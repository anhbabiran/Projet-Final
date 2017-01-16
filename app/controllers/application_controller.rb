class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  helper_method :current_user_admin
  def current_user_admin
    user_admin = User_admin.find_by_id(admin_session[:user_admin_id])
  end
end
