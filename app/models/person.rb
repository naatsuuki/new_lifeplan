# app/models/person.rb

class Person < ApplicationRecord
    # 現在の属性
    validates :name, presence: true
    validates :birth_year, presence: true
  
    # 新しい属性
    validates :name, presence: true
    validates :birth_year, presence: true
  end
  