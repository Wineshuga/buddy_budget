class Procurement < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :categories_procurements
  has_many :categories, through: :categories_procurements

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true }
end
