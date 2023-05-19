class User::AnimationsController < ApplicationController
    def index
        @animations = Animation.all
        @animation = Animation.page(params[:page])
    end
    
    def show
        @animation = Animation.find(params[:id])
    end
end
