class CarsController < ApplicationController
    has_many :carcompanies
    has_many :companies, through: :carcompanies
end
