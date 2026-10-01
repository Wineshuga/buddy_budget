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
      puts 'ERRORS:'
      puts @procurement.errors.full_messages
      flash[:alert] = 'Error! Transaction can not be added!'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @procurement = Procurement.find(params[:id])
    if @procurement.destroy
      flash[:notice] = 'A transaction has been deleted!'
    else
      flash[:alert] = 'Error! Transaction could not be deleted!'
    end
    redirect_to category_procurements_path
  end

  private

  def procurement_params
    params.require(:procurement).permit(:name, :amount, :date, category_ids: [])
  end
end
