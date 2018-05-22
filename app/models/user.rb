class User < ApplicationRecord
  has_secure_password
  has_many :recipes

  validates :password, :email, presence: true
  validates :email, uniqueness: true
end
