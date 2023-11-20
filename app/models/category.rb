class Category < ApplicationRecord
  belong_to :user
  has_many :categories_procurements
  has_many :procurements, through: :categories_procurements

  validates :name, presence: true
end
