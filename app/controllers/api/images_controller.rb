class Api::ImagesController < ApplicationController
  def index
    @image = current_user.property.id.image
  end

  def create
    @image = Image.new(
      property_id: params[:property_id],
      url: params[:url],
      user_id: params[:user_id],
    )
    @image.save

    if @image.save
      render "show.json.jb"
    else
      render json: { errors: @image.errors.full_messages }, status: 422
    end
  end
end
