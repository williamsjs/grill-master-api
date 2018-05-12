class MeatType < ApplicationRecord
  belongs_to :meat_category
  belongs_to :meat

end
