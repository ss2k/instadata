class DataController < ApplicationController
  def index
    session[:access_token] ||= params[:code]
    redirect_to sessions_path if !session[:access_token]

    client = Instagram.client(:access_token => session[:access_token])
    @user = client.user
    @recent = client.user_media_feed
  end
end
 