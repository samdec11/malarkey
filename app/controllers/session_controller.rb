class SessionController < ApplicationController
  def create
    binding.pry
    user = User.find_or_create_by_username(params[:username])
    session[:user_id] = user.id
    authenticate
    render json: user
  end
  def destroy
    @auth.is_online = false
    @auth.save
    session[:user_id] = nil
    authenticate
    render :nothing => true
  end
end