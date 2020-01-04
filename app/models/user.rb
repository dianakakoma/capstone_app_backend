class User < ApplicationRecord
  has_many :images
  has_many :properties

  has_many :amenity_users
  has_many :amenities, through: :amenity_users

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
