class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def recipe
      if logged_in?
        @recipes = Recipe.where(created_by: current_user.id)
      else
        flash[:danger] = "Please login to see your recipes!"
        @recipes = []
      end
  end

  def create
    @user = User.new(user_params)   
    if @user.save
      flash[:success] = "Welcome to Yummy! Please log-in to get started"
     redirect_to root_path
    else
      render 'new'
    end
  end

  private
  
      def user_params
        params.require(:user).permit(:name, :email, :password,
                                     :password_confirmation)
      end
  
end
