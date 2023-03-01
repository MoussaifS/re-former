class UsersController < ApplicationController
    def create
        @user = User.new(name: params[:name], email: params[:email], password: params[:password])
      
        if @user.save
          redirect_to new_user_path
        else
          render :new, status: :unprocessable_entity
        end
      end

    def new
        
    end
end
