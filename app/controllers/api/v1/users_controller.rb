class API::V1::UsersController < ApplicationController
  def index
    @users = User.all
    respond_to @users.as_json(root: true)
  end

  def show
    @user = User.find_by(username: params[:id])
    respond_to @user.as_json(root: true)
  end
end
