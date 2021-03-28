class ReviewsController < ApplicationController

  get "/games/:game_id/reviews/:review_id/edit" do
    @review = Review.find(params[:id])
    erb :"/reviews/edit"
  end

  get "/games/:game_id/reviews/:review_id/delete" do
    @review = Review.find(params[:id])
    erb :"/reviews/delete"
  end

  get "/games/:game_id/reviews/new" do
    @game = Game.find(params[:game_id])
    erb :"/reviews/new"
  end

  post "/:game_id/reviews" do
    @game = Game.find(params[:game_id])
    @user = User.find_by(:email => session[:email])
    review = Review.new
    review.message = params[:message]
    if review.save
      @game.reviews << review
      @user.reviews << review
    end
    redirect to "/games/#{@game.id}"
  end

  patch "/reviews/:id" do
    @review = Review.find(params[:id])
    @review.message = params[:message]
    @review.save
    game_id = @review.game.id
    redirect to "/games/#{game_id}"
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    game_id = review.game.id
    review.destroy
    redirect to "/games/#{game_id}"
  end
end
