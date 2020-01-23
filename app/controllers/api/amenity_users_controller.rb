class Api::AmenityUsersController < ApplicationController
  def index
    @amenity_users = current_user.amenity_users
    render "index.json.jb"
  end

  def create
    @amenity_user = AmenityUser.new(
      user_id: current_user.id,
      amenity_id: params[:amenity_id],
    )
    @amenity_user.save
    render json: { message: "Success!" }
  end

  def create_all
    current_user.amenity_users.destroy_all
    params[:amenity_ids].each do |amenity_id|
      AmenityUser.create(amenity_id: amenity_id, user_id: current_user.id)
    end
    render json: { message: "success" }
  end

  def destroy
    @amenity_user = AmenityUser.find_by(id: params[:id])
    @amenity_user.destroy
    render json: { Message: "One amenity has been successfully removed!" }
  end
end
