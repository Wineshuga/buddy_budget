class AddDateToProcurements < ActiveRecord::Migration[7.1]
  def change
    add_column :procurements, :date, :date
  end
end
