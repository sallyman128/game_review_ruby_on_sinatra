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
      # assign user a session id
    end
  end

  helpers do
    def email_exists?(email)
      !!User.find_by(:email => params[:email])
    end
  end
end