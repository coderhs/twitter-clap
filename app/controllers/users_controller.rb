class UsersController < ApplicationController
  def index
  	@users = User.all
  end
  def show
  	@user = User.find(params[:id])
  end
  def destroy
  	user = User.find(params[:id])
  	user.destroy
  	redirect_to "/users/index"
  end
  def role
    @user = User.find(params[:id])
  end
  def create_user_type
    user = User.find(user_type_reset_params[:id])
    user.user_type = user_type_reset_params[:user_type]
    user.save!
    redirect_to "/users/index" 
  end

  private

  def user_type_reset_params
    params.require(:user_type).permit(:user_type, :id)
  end
end
