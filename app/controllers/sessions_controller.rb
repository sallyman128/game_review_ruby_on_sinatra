class SessionsController < ApplicationController

  get "/login" do
    erb :"/sessions/login"
  end

  post "/sessions" do
    params.inspect
  end

  get "/signup" do
    erb :"/sessions/signup"
  end

  get "/logout" do
    erb :"/sessions/logout"
  end
end