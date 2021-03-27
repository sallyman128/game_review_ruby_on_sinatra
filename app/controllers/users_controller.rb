class UsersController < ApplicationController
  get "/signup" do
    erb :"/users/signup"
  end

  post "/users" do
    if email_exists?(params[:email])
      redirect "/signup"
    else
      user = User.new
      user.email = params[:email]
      user.name = params[:name]
      user.password = params[:password]
      user.save
      session[:email] = user.email
      redirect "/games"
    end
  end

  get "/user/profile" do
    if !!session[:email]
      @user = User.find_by(:email => session[:email])
      erb :"/users/show"
    else
      redirect to "/validator"
    end
  end

  helpers do
    def email_exists?(email)
      !!User.find_by(:email => params[:email])
    end
  end
end