class Admin::CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user

  def index
    @categories = Category.paginate page: params[:page]
  end

  def show
    @category = Category.find params[:id]
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = "Category has been added!"
      redirect_to admin_categories_path
    else
      render 'new'
    end
  end

  def destroy
    @category = Category.find params[:id]
    @category.destroy
    flash[:success] = "Category deleted"
    redirect_to admin_categories_path
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]
    if @category.update_attributes category_params
      flash[:success] = "Category has been updated!"
      redirect_to admin_categories_path
    else
      render 'edit'
    end
  end

  private
  def category_params
    params.require(:category).permit(:name, :avatar, :description)
  end
end
