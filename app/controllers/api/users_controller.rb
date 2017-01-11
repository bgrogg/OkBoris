class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      render :show
    else
      render json: @user.errors, status: 422
    end
  end

  def show
    @user = User.find(params[:id])

    if @user
      render :profile
    else
      render json: @user.errors, status: 422
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      render :profile
    else
      render json: @user.errors, status: 422
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user)
      .permit(
              :username,
              :password,
              :email,
              :location,
              :summary,
              :looking_for,
              :profile_pic_id,
              :image_file_name
             )
  end
end
