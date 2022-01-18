module Api
  class ParkingSpacesController < SecuredController
    def index
      render json: ParkingSpace.where(parking_id: params[:parking_id]).all
    end

    def create
      ParkingSpace.create(parking_space_params)
      head :ok
    end

    def parking_space_params
      params.require(:parking_space).permit(:name, :owner_id, :parking_id)
    end
  end
end