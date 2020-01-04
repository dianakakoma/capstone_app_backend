class Api::AmenitiesController < ApplicationController
  def index
    @amenity = Amenity.all
    render "index.json.jb"
  end

  # def update
  #   @amenity = Amenity.find_by(id: params[:id]
  #     # @amenity.description = params[:importance: required || :'nice to have' || :n/a]
  #   # @amenity.save
  #   render "show.jb"
  # end
end
