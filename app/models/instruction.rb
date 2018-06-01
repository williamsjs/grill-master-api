class Instruction < ApplicationRecord
  belongs_to :recipe

  validates :name, :recipe, :order_number, presence: true
end