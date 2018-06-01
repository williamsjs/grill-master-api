class Ingredient < ApplicationRecord
  belongs_to :recipe
  validates :name, :recipe, :spot, presence: true
end
