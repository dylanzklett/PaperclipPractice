class HomeController < ApplicationController
  def index
  	@user = User.new
  	@users = User.all
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
