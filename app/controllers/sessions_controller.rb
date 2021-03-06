class SessionsController < ApplicationController

  get "/login" do
    erb :"/sessions/login"
  end

  post "/sessions" do
    @user = User.find_by(:email => params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      session[:email] = @user.email.downcase
      redirect to "/games"
    else
      erb :"/sessions/login"
    end
  end

  get "/logout" do
    session.clear
    erb :"/sessions/logout"
  end
end