class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :birth_year, presence: true, numericality: { only_integer: true }
  has_secure_password
end
