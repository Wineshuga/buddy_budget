class Procurement < ApplicationRecord
  belong_to :user
  has_many :categories_procurements
  has_many :categories, through: :categories_procurements

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true }
end
