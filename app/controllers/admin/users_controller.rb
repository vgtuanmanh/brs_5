class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin

  def index
    @users = User.paginate page: params[:page]
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "User has been added!"
      redirect_to admin_users_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    flash[:success] = "User deleted"
    redirect_to admin_users_path
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes user_params
      flash[:success] = "User's profile has been updated!"
      redirect_to admin_users_path
    else
      render 'edit'
    end
  end

  private
  def is_admin
    unless current_user.role == "admin"
      flash[:danger] = "You not be an admin!"
      redirect_to root_path
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
