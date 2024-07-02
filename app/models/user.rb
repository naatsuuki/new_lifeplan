# app/models/user.rb
class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, uniqueness: true
  validates :birth_year, presence: true
end
  