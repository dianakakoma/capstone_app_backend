class Api::AmenityUsersController < ApplicationController
  def create
    @amenity_user = Amenity_users.new(
      property_id: params[:property_id],
      user_id: params[:user_id],
      amenity_id: params[:amenity_id],
    )
    @amenity_user.save
    render json: { message: "Success!" }
  end

  def destroy
    @amenity_users = Amenity_users.find_by(id: params[:id])
    @amenity_users.destroy
    render json: { Message: "One amenity has been successfully removed!" }
  end
end
