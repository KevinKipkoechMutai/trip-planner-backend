class CarSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :description, :image_url
  has_one :user
end
