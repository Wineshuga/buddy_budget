class ProcurementsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @procurement = Procurement.new
  end

  def index
    @category = Category.find(params[:category_id])
    @procurements = @category.procurements.order(created_at: :desc)
  end
end
