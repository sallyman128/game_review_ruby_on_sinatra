class UsersController < ApplicationController
  get "/signup" do
    erb :"/users/new"
  end

  post "/users" do
    @user = User.new
    @user.name = params[:name].capitalize
    @user.email = params[:email].downcase
    @user.password = params[:password]

    if unique_email?(@user.email) && @user.save
      redirect "/login"      
    else
      @duplicate_email = true if !unique_email?(@user.email)
      erb :"/users/new"
    end
  end

  get "/users/:id" do
    @user = User.find(params[:id])
    erb :"/users/show"
  end

  helpers do
    def unique_email?(email)
      !User.find_by(:email => email)
    end
  end
end