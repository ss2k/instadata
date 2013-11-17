class SessionsController < ApplicationController
  def new
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:access_token] = response.access_token
    flash[:notice] = "Successfully authenticated with instagram."
    redirect_to data_path
  end

end
