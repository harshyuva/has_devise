class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def show
    #debugger

   @user =  User.find(params[:id])
  end

  def create
    @user = User.new(users_params)
    @user.save
    redirect_to root_path
  end

  def update
  @user = User.find(params[:id])
    @user.update(users_params)
    redirect_to root_path
  end

  def edit
     @user = User.find(params[:id]) 
  end

  def destroy
     @user = User.find(params[:id])
     @user.destroy
     redirect_to root_path 
  end
  
  private 
  def users_params
     params.require(:user).permit(:name, :body, :lastname)
   end
end
