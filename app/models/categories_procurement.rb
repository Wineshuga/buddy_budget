class CategoriesProcurement < ApplicationRecord
  belongs_to :category
  belongs_to :procurement
end
