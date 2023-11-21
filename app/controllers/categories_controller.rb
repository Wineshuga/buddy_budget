class CategoriesController < ApplicationController
  before_action :authenticate_user!
    
  def new
    @category = Category.new
  end

  def index
    @categories = Category.where(author_id: current_user.id)
  end
end
