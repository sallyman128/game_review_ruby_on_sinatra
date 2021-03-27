class ReviewsController < ApplicationController

  get "/reviews/:id/edit" do
    @review = Review.find(params[:id])
    erb :"/reviews/edit"
  end
end
