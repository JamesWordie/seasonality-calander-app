class Ingredient < ApplicationRecord
  include PgSearch::Model
  belongs_to :category
  has_many :calanders
  has_many :months, through: :calanders

  multisearchable against: :name
end
