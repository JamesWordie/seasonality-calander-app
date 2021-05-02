class Ingredient < ApplicationRecord
  belongs_to :category
  has_many :calanders
  has_many :months, through: :calanders
end
