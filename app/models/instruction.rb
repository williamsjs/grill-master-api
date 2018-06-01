class Instruction < ApplicationRecord
  has_many :recipes_instructions
  has_many :recipes, through: :recipes_instructions
end