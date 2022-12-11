class Company < ApplicationRecord
    has_many :car_companies
    has_many :companies, through: :car_companies
end
