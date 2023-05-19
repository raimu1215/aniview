class User::ReviewsController < ApplicationController
    def new
        @review = Review.new
    end
    
    def index
        @animation = Animation.find(params[:id])
        @reviews = Review.all
    end
    
    def edit
        @newreview = Review.new
        @review = Review.find(params[:id])
        @users = @review.user
    end
end
