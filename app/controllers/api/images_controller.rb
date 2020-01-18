class Api::ImagesController < ApplicationController
  def index
    @image = current_user.property.id.image
  end

  #def create
  #@image = Image.new(
  #property_id: params[:property_id],
  #url: params[:url],
  #user_id: params[:user_id],
  #)
  #@image.save

  #if @image.save
  #render "show.json.jb"
  #else
  #render json: { errors: @image.errors.full_messages }, status: 422

  #end
  #end

  def create
    response = Cloudinary::Uploader.upload(params[:image])
    cloudinary_url = response["secure_url"]
    @post = Post.new(
      title: params[:title],
      body: params[:body],
      image: cloudinary_url,
    )
    if @post.save
      render "show.json.jbuilder"
    else
      render json: { errors: @post.errors.full_messages }, status: 422
    end
  end
end
