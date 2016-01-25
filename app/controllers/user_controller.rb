class UserController < ApplicationController
  def new
  	@user = User.new
  end
  def create
	@user = User.create(user_params)
	if @user
		redirect_to root_path
		flash[:notice] = "Success!"
	else
		render "new"
		flash[:alert] = "Failure"
	end
end
  private
def user_params
	params.require(:user).permit(:username, :avatar)
end
end
