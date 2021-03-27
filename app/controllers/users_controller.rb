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
    if !!session[:email]
      @user = User.find(params[:id])
      erb :"/users/show"
    else
      redirect to "/validator"
    end
  end

  get "/users/:id/edit" do
    @user = User.find(params[:id])
    erb :"/users/edit"
  end

  patch "/users/:id" do
    user = User.find(params[:id])
    user.name = params[:name]
    user.email = params[:email]
    if user.authenticate(params[:old_password])
      user.password = params[:new_password]
    end
    user.save
    redirect to "/users/#{user.id}"
  end

  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    session.clear
    redirect to "/games"
  end

  helpers do
    def email_exists?(email)
      !!User.find_by(:email => params[:email])
    end
  end
end