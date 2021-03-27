class SessionsController < ApplicationController

  get "/login" do
    erb :"/sessions/login"
  end

  post "/sessions" do
    user = User.find_by(:email => params[:email])
    if user && user.authenticate(params[:password])
      session[:email] = user.email
      redirect to "/games"
    else
      redirect to "/login"
    end
  end

  get "/validator" do
    erb :validator
  end

  get "/logout" do
    session.clear
    erb :"/sessions/logout"
  end
end