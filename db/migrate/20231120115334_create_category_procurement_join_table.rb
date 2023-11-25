class CreateCategoryProcurementJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :categories, :procurements do |t|
      # t.index [:category_id, :procurement_id]
      # t.index [:procurement_id, :category_id]
    end
  end
end
