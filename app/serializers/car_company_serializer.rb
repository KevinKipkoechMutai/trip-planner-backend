class CarCompanySerializer < ActiveModel::Serializer
  attributes :id
  has_one :company
  has_one :car
end
