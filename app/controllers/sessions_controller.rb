class SessionsController < ApplicationController
  skip_before_action :authorize_user, only: [:new, :create]

  def new

  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
