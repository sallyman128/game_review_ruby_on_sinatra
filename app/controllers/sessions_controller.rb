class SessionsController < ApplicationController

  get "/login" do
    erb :"/sessions/login"
  end

  get "/signup" do
    erb :"/sessions/signup"
  end

  get "/logout" do
    erb :"/sessions/logout"
  end
end