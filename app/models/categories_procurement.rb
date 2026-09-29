class CategoriesProcurement < ApplicationRecord
  # Validations
  validates :category_id, presence: true
  validates :procurement_id, presence: true

  # Associations
  belongs_to :category, dependent: :destroy
  belongs_to :procurement, dependent: :destroy
end
