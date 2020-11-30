class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users
    end
    def new 
        user = User.new 
        render json: recipe
    end 
    
    def create 
        user = User.create(user_params)
        render json: recipe
    end 


    private

    def user_params
        params.require(:user).permit(:name, :email, :username, :password)
    end 

end
