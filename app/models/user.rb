class User < ApplicationRecord
  has_many :procurements
  has_many :categories

  validates :name, presence: true
end
