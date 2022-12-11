class CarCompany < ApplicationRecord
  belongs_to :company
  belongs_to :car
end
