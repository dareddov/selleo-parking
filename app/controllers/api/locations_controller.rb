module Api
  class LocationsController < SecuredController
    def index
      render json: Location.all
    end

    def create
      Location.create(location_params)
      head :ok
    end

    private

    def location_params
      params.require(:location).permit(:name)
    end
  end
end