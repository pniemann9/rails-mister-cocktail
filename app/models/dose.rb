class Dose < ApplicationRecord
  validates :description, prensence: true
  validates :coktail, prensence: true
  validates :ingredient, prensence: true
  belongs_to :coktail
  belongs_to :ingredients
end
