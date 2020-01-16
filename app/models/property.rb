class Property < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :amenity_properties
  has_many :amenities, through: :amenity_properties

  def main_image_url
    if images.length > 0
      images[0].url
    else
      "https://www.freeiconspng.com/uploads/no-image-icon-15.png"
    end
  end
end
