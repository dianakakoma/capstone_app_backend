class Property < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :amenity_properties
  has_many :amenities, through: :amenity_properties
end
