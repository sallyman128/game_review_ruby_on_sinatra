class ReviewsController < ApplicationController

  get "/reviews/:id/edit" do
    @review = Review.find(params[:id])
    erb :"/reviews/edit"
  end

  get "/reviews/:id/delete" do
    @review = Review.find(params[:id])
    erb :"/reviews/delete"
  end

  delete "/reviews/:id" do
  end
end
