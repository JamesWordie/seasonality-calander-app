class Month < ApplicationRecord
  has_many :calanders
  has_many :ingredients, through: :calanders
end
