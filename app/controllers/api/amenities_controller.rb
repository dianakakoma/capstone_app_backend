class Api::AmenitiesController < ApplicationController
  def index
    @amenities = Amenity.all
    render "index.json.jb"
  end

  def create
    @amenity = Amenity.new(
      description: params[:description],
    )
    @amenity.save
    render "index.json.jb"
  end

  def update
    @amenity = Amenity.find_by(id: params[:id])
    @amenity.save
    render "show.json.jb"
  end
end
