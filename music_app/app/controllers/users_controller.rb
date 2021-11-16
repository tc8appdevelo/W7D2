class UsersController < ApplicationController
    
    def index
        render :index
    end

    def new
        render :new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user
        else
            render :index
        end
    end


    private

    def user_params
        params.require(:user).permit(:email, :password)
    end
end