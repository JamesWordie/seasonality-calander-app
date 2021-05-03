class Month < ApplicationRecord
  include PgSearch::Model
  has_many :calanders
  has_many :ingredients, through: :calanders

  # pg_search_scope :search_by_ingredient_name,
  #                 against: :name,
  #                 associated_against: {
  #                   ingredient: :name,
  #                   category: :name
  #                 },
  #                 using: {
  #                   tsearch: { prefix: true }
  #                 }
end
