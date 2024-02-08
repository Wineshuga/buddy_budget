class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :categories_procurements, class_name: 'CategoriesProcurement'
  has_many :procurements, through: :categories_procurements
  has_one_attached :image

  validates :name, presence: true
end
