class UsersController < ApplicationController
  def new
  	@user = User.new


        render json: @user.to_json
  end

  def create
  	@user = User.create(user_params)
  	session[:user_id] = @user.id

     render json: @user.to_json

  end


  private
  	def user_params
  		params.require(:user).permit(:name, :email, :password)
  	end
end


#this is a test
