class ProcurementsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @procurement = Procurement.new
    @categories = Category.where(author_id: current_user.id)
  end

  def index
    @category = Category.find(params[:category_id])
    @procurements = @category.procurements.order(created_at: :desc)
  end

  def create
    @procurement = Procurement.new(procurement_params)
    @procurement.author_id = current_user.id

    if @procurement.save
      flash[:notice] = 'A transaction has been created!'
      redirect_to category_procurements_path
    else
      flash[:alert] = "Error! #{@procurement.errors.full_messages.join(', ')}"
      redirect_to new_category_procurements_path
    end
  end

  private

  def procurement_params
    params.require(:procurement).permit(:name, :amount, category_ids: [])
  end
end
