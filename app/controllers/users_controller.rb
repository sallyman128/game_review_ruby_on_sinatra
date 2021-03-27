class UsersController < ApplicationController
  get "/signup" do
    erb :"/users/new"
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

  get "/users/:id" do
    @user = User.find(params[:id])
    erb :"/users/show"
  end

  helpers do
    def email_exists?(email)
      !!User.find_by(:email => params[:email])
    end
  end
end