class Car < ApplicationRecord
  belongs_to :user
  has_many :car_companies
  has_many :companies, through: :car_companies
end
