class SessionsController < ApplicationController
  def login
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to books_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => 'Volte sempre!'
  end

end