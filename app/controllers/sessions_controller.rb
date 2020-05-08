class SessionsController < ApplicationController
  def new
  	@user = User.new

       render json: @user.to_json
  end

  def create
    if auth.nil?

  	@user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id

  	else
  	render json: @user.to_json "Failed to log in"
  	end
    else
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
    u.name = auth['info']['name']
    u.email = auth['info']['email']
    u.password = SecureRandom.hex
    end
    session[:user_id] = @user.id
    render json: @user.to_json "Successfully logged in"

    end
  end

  def login

  end

  def welcome
  end
  def destroy
    session.delete(:user_id)
  render json: @user.to_json "Successfully deleted"
  end
  private

  def auth
    request.env['omniauth.auth']
  end
end
