class SecretsController < ApplicationController

  def show
    #authorize_user
    # You may only call render or redirect in a controller action exactly once
    # render :show -> the redirect will take priority over the render
    # these will overwrite each other
    # redirect_to '/'
    # redirect_to '/login'
    # redirect_to '/logout'
  end

end
