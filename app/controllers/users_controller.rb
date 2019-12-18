class UsersController < ApplicationController
    def index
        @user = User.order('created_at DESC')
        render json: @user
    end
end
