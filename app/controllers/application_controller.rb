class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authorize_user

  def current_user
    session[:name]
  end

  private

  def authorize_user
    unless logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!session[:name]
  end
end
