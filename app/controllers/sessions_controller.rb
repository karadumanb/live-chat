class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(username: params[:session][:username])
    end

end
