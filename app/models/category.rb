class Category < ApplicationRecord
  include PgSearch::Model
  has_many :ingredients

  multisearchable against: :name
end
