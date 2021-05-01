class Calander < ApplicationRecord
  belongs_to :ingredient
  belongs_to :month
end
