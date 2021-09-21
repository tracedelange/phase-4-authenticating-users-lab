class UsersController < ApplicationController

    def show
        if session[:user_id]
            user = User.find_by(id: session[:user_id])
            render json: user
        else
            render json: {error: 'No user logged in.'}, status: 401
        end
    end
end
