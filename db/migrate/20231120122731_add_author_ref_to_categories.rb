class AddAuthorRefToCategories < ActiveRecord::Migration[7.1]
  def change
    add_reference :categories, :author, null: false, foreign_key: { to_table: :users }
  end
end
