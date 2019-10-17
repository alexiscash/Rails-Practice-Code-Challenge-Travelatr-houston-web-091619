class DestinationsController < ApplicationController
    before_action :current_des, only: [:show, :edit, :update]

    def index
        @des = Destination.all
    end
    
    def new
    
    end
    
    def create
    
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
        @age = @des.bloggers.map{ |i| i.age }.reduce(:+) / @des.bloggers.size
        @posts = @des.posts.last(5)
    end
    
    def destroy
    
    end

    private

    def current_des
        @des = Destination.find(params[:id])
    end
end
