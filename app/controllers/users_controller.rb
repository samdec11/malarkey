class UsersController < ApplicationController
  def index
    render json: User.all
  end
  def show
    user = User.find(params[:id])
    render json: user
  end
  def create
    user = User.new(params[:user])
    if user.save
      render json: {response: user}
    else
      render json: {response: false}
    end
  end
  def update
    user = User.find(params[:id])
    user.update_attributes(params[:user])
  end
end
