class User < ApplicationRecord
  has_secure_password

  validates :password, :email, presence: true
  validates :email, uniqueness: true
end
