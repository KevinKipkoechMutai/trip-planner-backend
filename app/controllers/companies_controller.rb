class CompaniesController < ApplicationController
    has_many :carcompanies
    has_many :companies, through: :carcompanies
end
