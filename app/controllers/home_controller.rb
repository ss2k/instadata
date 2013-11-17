class HomeController < ApplicationController
  def index
    redirect_to data_path if session[:access_token]
  end
end
