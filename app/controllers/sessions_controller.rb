class SessionsController < ApplicationController

    def create
        oneUser = User.find_by(username: params[:username])
        session[:user_id] = oneUser.id

        render json: oneUser
    end

    def destroy
        session.delete :user_id
        
        render json: {}, status: :no_content
    end

end