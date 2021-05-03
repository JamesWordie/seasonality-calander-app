class Month < ApplicationRecord
  has_many :calanders
  has_many :ingredients, through: :calanders

  include PgSearch::Model
  pg_search_scope :search_by_ingredient_name,
                  against: :name,
                  associated_against: {
                    ingredient: :name,
                    category: :name
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
