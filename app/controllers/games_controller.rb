class GamesController < ApplicationController
  get "/games" do
    @games = Game.all
    @games = @games.sort {|a,b| a.name <=> b.name}
    erb :"/games/index"
  end

  get "/games/:id" do
    @game = Game.find(params[:id])
    erb :"/games/show"
  end
end