class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @category = Category.new
  end

  def index
    @categories = Category.where(author_id: current_user.id)
  end

  def create
    @category = Category.new(category_params)
    @category.author_id = current_user.id

    if @category.save
      flash[:notice] = 'A Category has been created!'
      redirect_to categories_path
    else
      flash[:alert] = "Error! #{@category.errors.full_messages.join(', ')}"
      redirect_to new_categories_path
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
