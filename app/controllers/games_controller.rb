class GamesController < ApplicationController
  get "/games" do
    @games = Game.all
    erb :"/games/index"
  end

  get "/games/new" do
    if !!session[:email]
      erb :"/games/new"
    else
      redirect to "/validator"
    end
  end

  get "/games/:id" do
    @game = Game.find(params[:id])
    erb :"/games/show"
  end

  get "/games/:id/edit" do
    if !!session[:email]
      @game = Game.find(params[:id])
      erb :"/games/edit"
    else
      redirect to "/validator"
    end
  end

  post "/games" do
    game = Game.new()
    game.name = params[:name]
    game.max_player = params[:max_player]
    game.description = params[:description]
    game.save
    redirect to "/games/#{game.id}"
  end

  patch "/games/:id" do
    game = Game.find(params[:id])
    game.name = params[:name]
    game.max_player = params[:max_player]
    game.description = params[:description]
    game.save
    redirect to "/games/#{game.id}"
  end

  delete "/games/:id" do
    if !!session[:email]
      game = Game.find(params[:id])
      game.destroy
      redirect to :"/games"
    else
      redirect to "/validator"
    end
  end
end