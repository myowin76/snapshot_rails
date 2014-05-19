class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :clear_setting_cache

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end



  def clear_setting_cache
    Admin::Setting.clear_cache!
  end

  def store_location
    session[:return_to] = request.env['REQUEST_URI']
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end


  def current_user
    @current_user ||= Admin::User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
  
end
