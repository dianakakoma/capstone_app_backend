class Api::PropertiesController < ApplicationController
  before_action :authenticate_user #, except: [:index, :show]

  def index
    @properties = current_user.properties
    render "index.json.jb"
  end

  def create
    @property = Property.new(
      address: params[:address],
      url: params[:url],
      notes: params[:notes],
      visited: false,
      rating: params[:rating],
      available: params[:available],
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
    @property.rating = params[:rating] || @property.rating
    @property.notes = params[:notes] || @property.notes
    @property.photos = params[:photos] || @property.photos
    @property.save
    render show.json.jb
  end
end
