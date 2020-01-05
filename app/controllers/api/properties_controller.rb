class Api::PropertiesController < ApplicationController
  before_action :authenticate_user #, except: [:index, :show]

  def index
    # @properties = Property.all
    @properties = current_user.properties
    render "index.json.jb"
  end

  def create
    @property = Property.new(
      address: params[:address],
      property_url: params[:property_url],
      notes: params[:notes],
      visited: params[:false],
      rating: params[:rating],
      availability: params[:availability],
      user_id: current_user.id,
    )
    @property.save
    render "show.json.jb"
  end

  def show
    @property = Property.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @property = Property.findby(id: params[:id])
    @property.rating = params[:notes] || @property.rating
    @property.notes = params[:notes] || @property.notes
    @property.photos = params[:photos] || @property.photos
    @property.save
    render show.json.jb
  end
end
