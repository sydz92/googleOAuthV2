class GoogleController < ApplicationController
  def callback

    auth = env["omniauth.auth"]
    user = User.new
    user.uid = auth.uid
    user.name = auth.info.name
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!

    session[:user_id] = user.id
    redirect_to root_path
  end

  def signout
    session[:user_id] = nil
    redirect_to root_path
  end
end