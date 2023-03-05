class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash.now[:notice] = "We have exactly #{@user.errors} books available."
      redirect_to "/users/new" , notice: "there is an error"
    
    else 
      
    end
  end
  
  
  def create
        @user = User.new(user_params)
      
        if @user.save
          redirect_to new_user_path
        else
          render :new, status: :unprocessable_entity
        end
      end

    def new
        
    end


    def edit
      @user = User.find(params[:id])
    end

    private 
    def user_params 
      params.require(:user).permit(:name , :email , :password)
    end
end
