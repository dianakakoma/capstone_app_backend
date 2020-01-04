class Amenity < ApplicationRecord
  has_many :amenity_properties
  has_many :properties, through: :amenity_properties

  has_many :amenity_users
  has_many :users, through: :amenity_users
end
