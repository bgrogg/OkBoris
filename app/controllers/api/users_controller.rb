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
    @user = User
      .includes(:questions)
      .includes(:responses)
      .find(params[:id])

    if @user
      render :profile
    else
      render json: @user.errors, status: 422
    end
  end

  def update
    @user = current_user

    if @user.update_attributes(user_params)
      session[:session_token] = @user.reset_session_token!
      render :profile
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def index
    @users = current_user.find_users_within(params[:distance])
      .includes(:responses)
      .includes(:questions)
      .where("username != ?", current_user.username)

    if @users
      render :index
    else
      render json: @users.errors, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      :email,
      :location,
      :summary,
      :image_file_name,
      :gender,
      :orientation,
      :age,
      :life,
      :skills,
      :favorites,
      :thinking,
      :friday,
      :msg_if
    )
  end
end
