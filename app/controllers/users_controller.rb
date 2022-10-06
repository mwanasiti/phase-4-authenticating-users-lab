class UsersController < ApplicationController

    def show
        oneUser = User.find_by(id: session[:user_id])
        render json: oneUser
    end

end