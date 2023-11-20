class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :categories_procurements
  has_many :procurements, through: :categories_procurements

  validates :name, presence: true
end
