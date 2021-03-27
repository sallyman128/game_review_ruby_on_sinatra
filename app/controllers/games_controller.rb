class GamesController < ApplicationController
  get "/games" do
    if !!session
      @games = Game.all
      erb :"/games/index"
    else
      
    end
  end

  get "/games/new" do
    erb :"/games/new"
  end

  get "/games/:id" do
    @game = Game.find(params[:id])
    erb :"/games/show"
  end

  get "/games/:id/edit" do
    @game = Game.find(params[:id])
    erb :"/games/edit"
  end

  post "/games" do
    game = Game.new()
    game.name = params[:name]
    game.max_player = params[:max_player]
    game.description = params[:description]
    game.save
    redirect to :"/games/#{game.id}"
  end

  patch "/games/:id" do
    game = Game.find(params[:id])
    game.name = params[:name]
    game.max_player = params[:max_player]
    game.description = params[:description]
    game.save
    redirect to :"/games/#{game.id}"
  end

  delete "/games/:id" do
    game = Game.find(params[:id])
    game.destroy
    redirect to :"/games"
  end
end