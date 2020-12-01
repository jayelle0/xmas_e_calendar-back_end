class UsersController < ApplicationController
    wrap_parameters :user, include: [:username, :password, :email, :name]
    skip_before_action :authorized

    def index 
        users = User.all
        render json: users
    end
    def new 
        user = User.new 
        render json: recipe
    end 
    
    def create 
        @user = User.create(user_params)
        if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
          render json: { error: user.errors.full_messages }, status: :not_acceptable
        end
    end 



    private

    def user_params
        params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
    end 

end
