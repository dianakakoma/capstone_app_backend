class Api::AmenityUsersController < ApplicationController
  def create
    @amenity_user = AmenityUser.new(
      user_id: current_user.id,
      amenity_id: params[:amenity_id],
    )
    @amenity_user.save
    render json: { message: "Success!" }
  end

  def destroy
    @amenity_user = AmenityUser.find_by(id: params[:id])
    @amenity_user.destroy
    render json: { Message: "One amenity has been successfully removed!" }
  end
end
