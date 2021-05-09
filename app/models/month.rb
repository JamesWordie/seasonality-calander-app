class Month < ApplicationRecord
  include PgSearch::Model
  has_many :calanders
  has_many :ingredients, through: :calanders
end
