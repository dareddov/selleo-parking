module Api
  class ParkingsController < SecuredController
    def index
      render json: Parking.where(location_id: params[:location_id])
    end

    def create
      Parking.create(parking_params)
      head :ok
    end

    private

    def parking_params
      params.require(:parking).permit(:name, :location_id)
    end
  end
end