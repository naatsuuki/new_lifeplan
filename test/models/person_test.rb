# app/models/person.rb

class Person < ApplicationRecord
  validates :name, presence: true
  validates :birth_year, presence: true, numericality: { only_integer: true, greater_than: 1900, less_than_or_equal_to: Date.today.year }
end
