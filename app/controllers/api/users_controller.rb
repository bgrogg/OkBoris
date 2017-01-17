class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])

    if @user
      render :show
    else
      render json: @user.errors, status: 422
    end
  end

  def update
    @user = current_user

    if @user.update_attributes(user_params)
      session[:session_token] = @user.reset_session_token!
      render :show
    else
      render json: @user.errors.full_messages, status: 422
      render :show
    end
  end

  def index
    @users = User.all
    @users
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      :email,
      :location,
      :summary,
      :looking_for,
      :profile_pic_id,
      :image_file_name,
      :position
    )
  end
end
