class SessionsController < ApplicationController

  get "/login" do
    "login form"
  end

  get "/signup" do
    "signup form"
  end

  get "/logout" do
    "logout form"
  end
end